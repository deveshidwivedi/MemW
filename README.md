# MemW

## About

`wasm-memory` is a WebAssembly module designed to simplify memory management when interacting with JavaScript. It provides essential functions for memory allocation, deallocation, and manipulation, allowing for efficient data exchange between WebAssembly and JavaScript.

## Why Use This Module?

Managing memory in WebAssembly can be complex, especially when handling dynamic data. This module provides a structured way to allocate and free memory, preventing accidental overwrites and ensuring better control over memory usage. It enables seamless handling of strings, buffers, and other data structures in a WebAssembly environment.

## Getting Started

### Initialization

Before using the memory management functions, initialize the module:

```javascript
module.exports.init();
```

### Memory Management Functions

- **`malloc(size)`** – Allocates `size` bytes in linear memory.
- **`realloc(ptr, size)`** – Resizes an existing memory block.
- **`free(ptr)`** – Releases allocated memory.
- **`memcpy(dest, src, size)`** – Copies memory from one location to another.
- **`memset(ptr, value, size)`** – Fills a memory block with a specific value.

### Example Usage

```javascript
// Allocate 50 bytes
let ptr = module.exports.malloc(50);

// Set all bytes to zero
module.exports.memset(ptr, 0, 50);

// Expand the allocated space to 100 bytes
ptr = module.exports.realloc(ptr, 100);

// Allocate another block of memory
let ptr2 = module.exports.malloc(30);

// Copy memory from ptr to ptr2
module.exports.memcpy(ptr2, ptr, 30);

// Free allocated memory
module.exports.free(ptr);
module.exports.free(ptr2);
```

## Considerations

- This module does not track the total memory available, so allocating excessive memory may result in errors.
- Always free allocated memory when it is no longer needed to avoid memory leaks.
- Improper use of `malloc`, `realloc`, or `memcpy` can lead to undefined behavior.
