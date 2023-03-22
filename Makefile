TARGET_JSON=./x86_64-blog_os.json

build:
	cargo build --target $(TARGET_JSON)
	cargo bootimage --target $(TARGET_JSON)

start: build
	qemu-system-x86_64 -drive format=raw,file=target/x86_64-blog_os/debug/bootimage-minimal-os-in-rust.bin
