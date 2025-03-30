#include <stdlib.h>

#pragma once

#ifndef ADDRESS_H
#define ADDRESS_H

#define DEBUG

#define WASM_NULL_PTR (void*)0

#ifdef DEBUG
#include <iostream>
#include <iomanip>

extern void *WASM_ADDRESS_STORE_PTR;
#else
#define WASM_ADDRESS_STORE_PTR WASM_NULL_PTR
#endif

namespace memory{
	class AddressChunk;
	class AddressStore;

	class Address{
	protected:
		void *_ptr;
		size_t _len;

		friend class AddressChunk;
		friend class AddressStore;
	public:
		void clear();
		size_t getSpaceTo(Address *addr);
		Address &operator =(Address const &addr);

#ifdef DEBUG
		friend std::ostream &operator<<(std::ostream& stream, const Address &addr);
#endif
	};
}

#endif