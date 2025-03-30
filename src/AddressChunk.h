#include <stdlib.h>
#include "Address.h"

#pragma once

#ifndef ADDRESSCHUNK_H
#define ADDRESSCHUNK_H

#define ADDRESSCHUNK_LEN 8

namespace memory{
	class AddressStore;

	class AddressChunk{
	protected:
		size_t _len;
		Address _addr[ADDRESSCHUNK_LEN];
		AddressChunk *_next;

		friend class AddressStore;
	public:
		void clear();
		size_t find(void *ptr);
		bool insert(size_t idx, Address &addr);
		bool insert(size_t idx, void *ptr, size_t len);
		bool remove(size_t idx);

#ifdef DEBUG
		friend std::ostream &operator<<(std::ostream &stream, const AddressChunk &chunk);
		friend std::ostream &operator<<(std::ostream &stream, const AddressStore &store);
#endif
	};
}

#endif