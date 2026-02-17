#include <stdio.h>
#include <libusb-1.0/libusb.h>


// possible thanks to https://github.com/andrewrabert/python-pulsar-mouse-tool for reverse engineering the mouse protocol
// requires libusb, you probably have it installed

int VENDORID = 0x3710;

int main() {
    libusb_device **devs;
    libusb_device_handle *handle = NULL;
    struct libusb_device_descriptor desc;
    int i;
    unsigned char payload[] = {0x08,0x04,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0x49};
    unsigned char data[17];
    int transferred;

    libusb_init(NULL);
    libusb_get_device_list(NULL, &devs);

    for (i = 0; devs[i]; i++) {
        libusb_get_device_descriptor(devs[i], &desc);
        if (desc.idVendor == VENDORID) {
            libusb_open(devs[i], &handle);
            break;
        }
    }
    libusb_free_device_list(devs, 1);

    if (!handle) {
        return 0;
    }

    if (libusb_kernel_driver_active(handle, 1))
        libusb_detach_kernel_driver(handle, 1);
    libusb_claim_interface(handle, 1);

    libusb_control_transfer(handle, 0x21, 0x09, 0x0208, 1, payload, sizeof(payload), 500);
    libusb_interrupt_transfer(handle, 0x82, data, sizeof(data), &transferred, 100);

    printf("%d\n", data[6]);

    libusb_release_interface(handle, 1);
    libusb_close(handle);
    libusb_exit(NULL);
    return 0;
}
