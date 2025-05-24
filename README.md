# xv6-syscall-tracer

Selective, mask-based system-call tracing in xv6, with a user-space trace utility and clean separation of upstream vs. modified files.
Extend the xv6 teaching OS with a mask-based system-call tracer and a companion user-space utility.

## Repo Layout

- **`xv6/`**: unmodified, upstream xv6 source tree  
- **`dif/`**: exactly the changed/added files (kernel & user)  
- **`scripts/build.sh`**: builds xv6 with your tracer  
- **`.github/workflows/ci.yml`**: automated compile & qemu-smoke tests  

## Building & Running

1. **Extract** your xv6 archive into `xv6/` (overwrite nothing).  
2. **Copy** your modified files into `dif/` as listed above.  
3. **Run the build script**:
   ```bash
   chmod +x scripts/build.sh
   ./scripts/build.sh
4. **In the xv6 shell, use**:
   ```bash
   trace <mask> <command> [args…]
5. **e.g. to trace only read() calls**:
   ```bash
   trace 32 grep hello README

