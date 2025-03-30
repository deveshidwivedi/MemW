#include <stdlib.h>
#include "AddressChunk.h"

#pragma once

#ifndef ADDRESSSTORE_H
#define ADDRESSSTORE_H

namespace memory{
	class AddressStore{
	protected:
		size_t _len;
		AddressChunk _chunk;
	public:
		bool clear();
		AddressChunk *find(void *ptr);
		//bool insert(void *ptr, size_t len);
		void *alloc(size_t len);
		void *realloc(void *src, size_t len);
		void dealloc(void *ptr);

		static AddressStore *init();
		static AddressStore *get();

#ifdef DEBUG
		friend std::ostream &operator<<(std::ostream &stream, const AddressStore &store);
#endif
	};
}

#endif