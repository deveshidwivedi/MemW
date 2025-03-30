(module
  (type $FUNCSIG$i (func (result i32)))
  (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
  (table 0 anyfunc)
  (memory $0 1)
  (export "memory" (memory $0))
  (export "_ZN6memory7Address5clearEv" (func $_ZN6memory7Address5clearEv))
  (export "_ZN6memory7Address10getSpaceToEPS0_" (func $_ZN6memory7Address10getSpaceToEPS0_))
  (export "_ZN6memory7AddressaSERKS0_" (func $_ZN6memory7AddressaSERKS0_))
  (export "_ZN6memory12AddressChunk5clearEv" (func $_ZN6memory12AddressChunk5clearEv))
  (export "_ZN6memory12AddressChunk4findEPv" (func $_ZN6memory12AddressChunk4findEPv))
  (export "_ZN6memory12AddressChunk6insertEjRNS_7AddressE" (func $_ZN6memory12AddressChunk6insertEjRNS_7AddressE))
  (export "_ZN6memory12AddressChunk6insertEjPvj" (func $_ZN6memory12AddressChunk6insertEjPvj))
  (export "_ZN6memory12AddressChunk6removeEj" (func $_ZN6memory12AddressChunk6removeEj))
  (export "_ZN6memory12AddressStore5clearEv" (func $_ZN6memory12AddressStore5clearEv))
  (export "_ZN6memory12AddressStore4findEPv" (func $_ZN6memory12AddressStore4findEPv))
  (export "_ZN6memory12AddressStore5allocEj" (func $_ZN6memory12AddressStore5allocEj))
  (export "_ZN6memory12AddressStore7reallocEPvj" (func $_ZN6memory12AddressStore7reallocEPvj))
  (export "memcpy" (func $_ZN6memory6memcpyEPvS0_j))
  (export "free" (func $_ZN6memory4freeEPv))
  (export "_ZN6memory12AddressStore7deallocEPv" (func $_ZN6memory12AddressStore7deallocEPv))
  (export "_ZN6memory12AddressStore4initEv" (func $_ZN6memory12AddressStore4initEv))
  (export "_ZN6memory12AddressStore3getEv" (func $_ZN6memory12AddressStore3getEv))
  (export "init" (func $_Z4initv))
  (export "_Znwj" (func $_Znwj))
  (export "_Znaj" (func $_Znaj))
  (export "_ZdlPv" (func $_ZdlPv))
  (export "_ZdaPv" (func $_ZdaPv))
  (export "malloc" (func $_ZN6memory6mallocEj))
  (export "realloc" (func $_ZN6memory7reallocEPvj))
  (export "memset" (func $_ZN6memory6memsetEPvhj))
  (func $_ZN6memory7Address5clearEv (param $0 i32)
    (i64.store align=4
      (get_local $0)
      (i64.const 0)
    )
  )
  (func $_ZN6memory7Address10getSpaceToEPS0_ (param $0 i32) (param $1 i32) (result i32)
    (select
      (i32.const 0)
      (i32.sub
        (tee_local $1
          (i32.load
            (get_local $1)
          )
        )
        (tee_local $0
          (i32.add
            (i32.load offset=4
              (get_local $0)
            )
            (i32.load
              (get_local $0)
            )
          )
        )
      )
      (i32.lt_u
        (get_local $1)
        (get_local $0)
      )
    )
  )
  (func $_ZN6memory7AddressaSERKS0_ (param $0 i32) (param $1 i32) (result i32)
    (i32.store
      (get_local $0)
      (i32.load
        (get_local $1)
      )
    )
    (i32.store offset=4
      (get_local $0)
      (i32.load offset=4
        (get_local $1)
      )
    )
    (get_local $0)
  )
  (func $_ZN6memory12AddressChunk5clearEv (param $0 i32)
    (local $1 i32)
    (local $2 i32)
    (set_local $2
      (i32.const 0)
    )
    (i32.store
      (get_local $0)
      (i32.const 0)
    )
    (set_local $1
      (i32.add
        (get_local $0)
        (i32.const 4)
      )
    )
    (loop $label$0
      (call $_ZN6memory7Address5clearEv
        (i32.add
          (get_local $1)
          (get_local $2)
        )
      )
      (br_if $label$0
        (i32.ne
          (tee_local $2
            (i32.add
              (get_local $2)
              (i32.const 8)
            )
          )
          (i32.const 64)
        )
      )
    )
    (i32.store offset=68
      (get_local $0)
      (i32.const 0)
    )
  )
  (func $_ZN6memory12AddressChunk4findEPv (param $0 i32) (param $1 i32) (result i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    (block $label$0
      (block $label$1
        (br_if $label$1
          (i32.eqz
            (tee_local $2
              (i32.load
                (get_local $0)
              )
            )
          )
        )
        (set_local $5
          (i32.add
            (get_local $2)
            (i32.const -1)
          )
        )
        (set_local $3
          (i32.const 0)
        )
        (loop $label$2
          (br_if $label$0
            (i32.lt_u
              (get_local $5)
              (get_local $3)
            )
          )
          (loop $label$3
            (br_if $label$0
              (i32.eq
                (tee_local $4
                  (i32.load
                    (i32.add
                      (i32.add
                        (get_local $0)
                        (i32.shl
                          (tee_local $6
                            (i32.add
                              (i32.shr_u
                                (i32.sub
                                  (get_local $5)
                                  (get_local $3)
                                )
                                (i32.const 1)
                              )
                              (get_local $3)
                            )
                          )
                          (i32.const 3)
                        )
                      )
                      (i32.const 4)
                    )
                  )
                )
                (get_local $1)
              )
            )
            (block $label$4
              (br_if $label$4
                (i32.lt_u
                  (get_local $4)
                  (get_local $1)
                )
              )
              (br_if $label$1
                (i32.eqz
                  (get_local $6)
                )
              )
              (br_if $label$3
                (i32.ge_u
                  (tee_local $5
                    (i32.add
                      (get_local $6)
                      (i32.const -1)
                    )
                  )
                  (get_local $3)
                )
              )
              (br $label$0)
            )
          )
          (br_if $label$2
            (i32.ne
              (tee_local $3
                (i32.add
                  (get_local $6)
                  (i32.const 1)
                )
              )
              (get_local $2)
            )
          )
        )
        (return
          (get_local $2)
        )
      )
      (return
        (i32.const 0)
      )
    )
    (get_local $6)
  )
  (func $_ZN6memory12AddressChunk6insertEjRNS_7AddressE (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
    (local $3 i32)
    (local $4 i32)
    (set_local $3
      (i32.const 0)
    )
    (block $label$0
      (br_if $label$0
        (i32.gt_u
          (get_local $1)
          (i32.const 7)
        )
      )
      (br_if $label$0
        (i32.lt_u
          (tee_local $4
            (i32.load
              (get_local $0)
            )
          )
          (get_local $1)
        )
      )
      (block $label$1
        (block $label$2
          (br_if $label$2
            (i32.ne
              (get_local $4)
              (i32.const 8)
            )
          )
          (br_if $label$0
            (i32.eqz
              (tee_local $4
                (i32.load offset=68
                  (get_local $0)
                )
              )
            )
          )
          (set_local $3
            (i32.const 0)
          )
          (br_if $label$0
            (i32.eqz
              (call $_ZN6memory12AddressChunk6insertEjRNS_7AddressE
                (get_local $4)
                (i32.const 0)
                (i32.add
                  (get_local $0)
                  (i32.const 60)
                )
              )
            )
          )
          (set_local $3
            (i32.load
              (get_local $0)
            )
          )
          (br $label$1)
        )
        (i32.store
          (get_local $0)
          (tee_local $3
            (i32.add
              (get_local $4)
              (i32.const 1)
            )
          )
        )
      )
      (block $label$3
        (br_if $label$3
          (i32.le_u
            (tee_local $4
              (i32.add
                (get_local $3)
                (i32.const -1)
              )
            )
            (get_local $1)
          )
        )
        (set_local $3
          (i32.add
            (i32.add
              (get_local $0)
              (i32.shl
                (get_local $3)
                (i32.const 3)
              )
            )
            (i32.const -12)
          )
        )
        (loop $label$4
          (drop
            (call $_ZN6memory7AddressaSERKS0_
              (i32.add
                (get_local $3)
                (i32.const 8)
              )
              (get_local $3)
            )
          )
          (set_local $3
            (i32.add
              (get_local $3)
              (i32.const -8)
            )
          )
          (br_if $label$4
            (i32.gt_u
              (tee_local $4
                (i32.add
                  (get_local $4)
                  (i32.const -1)
                )
              )
              (get_local $1)
            )
          )
        )
      )
      (drop
        (call $_ZN6memory7AddressaSERKS0_
          (i32.add
            (i32.add
              (get_local $0)
              (i32.shl
                (get_local $1)
                (i32.const 3)
              )
            )
            (i32.const 4)
          )
          (get_local $2)
        )
      )
      (set_local $3
        (i32.const 1)
      )
    )
    (get_local $3)
  )
  (func $_ZN6memory12AddressChunk6insertEjPvj (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
    (local $4 i32)
    (local $5 i32)
    (set_local $4
      (i32.const 0)
    )
    (block $label$0
      (br_if $label$0
        (i32.gt_u
          (get_local $1)
          (i32.const 7)
        )
      )
      (br_if $label$0
        (i32.lt_u
          (tee_local $5
            (i32.load
              (get_local $0)
            )
          )
          (get_local $1)
        )
      )
      (block $label$1
        (block $label$2
          (br_if $label$2
            (i32.ne
              (get_local $5)
              (i32.const 8)
            )
          )
          (br_if $label$0
            (i32.eqz
              (tee_local $5
                (i32.load offset=68
                  (get_local $0)
                )
              )
            )
          )
          (set_local $4
            (i32.const 0)
          )
          (br_if $label$0
            (i32.eqz
              (call $_ZN6memory12AddressChunk6insertEjRNS_7AddressE
                (get_local $5)
                (i32.const 0)
                (i32.add
                  (get_local $0)
                  (i32.const 60)
                )
              )
            )
          )
          (set_local $4
            (i32.load
              (get_local $0)
            )
          )
          (br $label$1)
        )
        (i32.store
          (get_local $0)
          (tee_local $4
            (i32.add
              (get_local $5)
              (i32.const 1)
            )
          )
        )
      )
      (block $label$3
        (br_if $label$3
          (i32.le_u
            (tee_local $5
              (i32.add
                (get_local $4)
                (i32.const -1)
              )
            )
            (get_local $1)
          )
        )
        (set_local $4
          (i32.add
            (i32.add
              (get_local $0)
              (i32.shl
                (get_local $4)
                (i32.const 3)
              )
            )
            (i32.const -12)
          )
        )
        (loop $label$4
          (drop
            (call $_ZN6memory7AddressaSERKS0_
              (i32.add
                (get_local $4)
                (i32.const 8)
              )
              (get_local $4)
            )
          )
          (set_local $4
            (i32.add
              (get_local $4)
              (i32.const -8)
            )
          )
          (br_if $label$4
            (i32.gt_u
              (tee_local $5
                (i32.add
                  (get_local $5)
                  (i32.const -1)
                )
              )
              (get_local $1)
            )
          )
        )
      )
      (i32.store
        (i32.add
          (tee_local $4
            (i32.add
              (get_local $0)
              (i32.shl
                (get_local $1)
                (i32.const 3)
              )
            )
          )
          (i32.const 8)
        )
        (get_local $3)
      )
      (i32.store
        (i32.add
          (get_local $4)
          (i32.const 4)
        )
        (get_local $2)
      )
      (set_local $4
        (i32.const 1)
      )
    )
    (get_local $4)
  )
  (func $_ZN6memory12AddressChunk6removeEj (param $0 i32) (param $1 i32) (result i32)
    (local $2 i32)
    (local $3 i32)
    (set_local $3
      (i32.const 0)
    )
    (block $label$0
      (block $label$1
        (block $label$2
          (block $label$3
            (block $label$4
              (br_if $label$4
                (i32.le_u
                  (tee_local $2
                    (i32.load
                      (get_local $0)
                    )
                  )
                  (get_local $1)
                )
              )
              (block $label$5
                (br_if $label$5
                  (i32.le_u
                    (tee_local $3
                      (i32.add
                        (get_local $2)
                        (i32.const -1)
                      )
                    )
                    (get_local $1)
                  )
                )
                (set_local $2
                  (i32.sub
                    (get_local $3)
                    (get_local $1)
                  )
                )
                (set_local $1
                  (i32.add
                    (i32.add
                      (get_local $0)
                      (i32.shl
                        (get_local $1)
                        (i32.const 3)
                      )
                    )
                    (i32.const 12)
                  )
                )
                (loop $label$6
                  (drop
                    (call $_ZN6memory7AddressaSERKS0_
                      (i32.add
                        (get_local $1)
                        (i32.const -8)
                      )
                      (get_local $1)
                    )
                  )
                  (set_local $1
                    (i32.add
                      (get_local $1)
                      (i32.const 8)
                    )
                  )
                  (br_if $label$6
                    (tee_local $2
                      (i32.add
                        (get_local $2)
                        (i32.const -1)
                      )
                    )
                  )
                )
                (set_local $2
                  (i32.load
                    (get_local $0)
                  )
                )
              )
              (set_local $1
                (i32.add
                  (get_local $2)
                  (i32.const -1)
                )
              )
              (br_if $label$3
                (i32.ne
                  (get_local $2)
                  (i32.const 8)
                )
              )
              (br_if $label$2
                (i32.eqz
                  (tee_local $2
                    (i32.load offset=68
                      (get_local $0)
                    )
                  )
                )
              )
              (br_if $label$2
                (i32.eqz
                  (i32.load
                    (get_local $2)
                  )
                )
              )
              (drop
                (call $_ZN6memory7AddressaSERKS0_
                  (i32.add
                    (i32.add
                      (get_local $0)
                      (i32.shl
                        (get_local $1)
                        (i32.const 3)
                      )
                    )
                    (i32.const 4)
                  )
                  (i32.add
                    (get_local $2)
                    (i32.const 4)
                  )
                )
              )
              (set_local $3
                (i32.const 0)
              )
              (br_if $label$0
                (call $_ZN6memory12AddressChunk6removeEj
                  (i32.load
                    (i32.add
                      (get_local $0)
                      (i32.const 68)
                    )
                  )
                  (i32.const 0)
                )
              )
            )
            (return
              (get_local $3)
            )
          )
          (call $_ZN6memory7Address5clearEv
            (i32.add
              (i32.add
                (get_local $0)
                (i32.shl
                  (get_local $1)
                  (i32.const 3)
                )
              )
              (i32.const 4)
            )
          )
          (br $label$1)
        )
        (call $_ZN6memory7Address5clearEv
          (i32.add
            (i32.add
              (get_local $0)
              (i32.shl
                (get_local $1)
                (i32.const 3)
              )
            )
            (i32.const 4)
          )
        )
      )
      (i32.store
        (get_local $0)
        (i32.add
          (i32.load
            (get_local $0)
          )
          (i32.const -1)
        )
      )
    )
    (i32.const 1)
  )
  (func $_ZN6memory12AddressStore5clearEv (param $0 i32) (result i32)
    (local $1 i32)
    (local $2 i32)
    (call $_ZN6memory12AddressChunk5clearEv
      (tee_local $1
        (i32.add
          (get_local $0)
          (i32.const 4)
        )
      )
    )
    (set_local $2
      (i32.const 0)
    )
    (block $label$0
      (br_if $label$0
        (i32.eqz
          (call $_ZN6memory12AddressChunk6insertEjPvj
            (get_local $1)
            (i32.const 0)
            (i32.const 0)
            (i32.const 76)
          )
        )
      )
      (set_local $2
        (i32.const 1)
      )
      (i32.store
        (get_local $0)
        (i32.const 1)
      )
    )
    (get_local $2)
  )
  (func $_ZN6memory12AddressStore4findEPv (param $0 i32) (param $1 i32) (result i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    (local $7 i32)
    (local $8 i32)
    (set_local $3
      (i32.add
        (get_local $0)
        (i32.const 4)
      )
    )
    (set_local $7
      (i32.add
        (tee_local $2
          (i32.shr_u
            (i32.add
              (i32.load
                (get_local $0)
              )
              (i32.const 7)
            )
            (i32.const 3)
          )
        )
        (i32.const -1)
      )
    )
    (set_local $8
      (i32.const 0)
    )
    (set_local $4
      (i32.const 0)
    )
    (block $label$0
      (loop $label$1
        (set_local $0
          (get_local $8)
        )
        (br_if $label$0
          (i32.lt_u
            (get_local $7)
            (get_local $4)
          )
        )
        (loop $label$2
          (set_local $0
            (get_local $3)
          )
          (set_local $8
            (tee_local $5
              (i32.shr_u
                (i32.sub
                  (get_local $7)
                  (get_local $4)
                )
                (i32.const 1)
              )
            )
          )
          (block $label$3
            (br_if $label$3
              (i32.ge_u
                (get_local $4)
                (tee_local $6
                  (i32.add
                    (get_local $5)
                    (get_local $4)
                  )
                )
              )
            )
            (loop $label$4
              (set_local $0
                (i32.load offset=68
                  (get_local $0)
                )
              )
              (br_if $label$4
                (tee_local $8
                  (i32.add
                    (get_local $8)
                    (i32.const -1)
                  )
                )
              )
            )
          )
          (block $label$5
            (br_if $label$5
              (i32.lt_u
                (i32.load
                  (i32.add
                    (i32.add
                      (get_local $0)
                      (i32.shl
                        (i32.load
                          (get_local $0)
                        )
                        (i32.const 3)
                      )
                    )
                    (i32.const -4)
                  )
                )
                (get_local $1)
              )
            )
            (br_if $label$0
              (i32.le_u
                (i32.load offset=4
                  (get_local $0)
                )
                (get_local $1)
              )
            )
            (block $label$6
              (br_if $label$6
                (i32.ge_u
                  (get_local $4)
                  (tee_local $7
                    (i32.add
                      (get_local $6)
                      (i32.const -1)
                    )
                  )
                )
              )
              (set_local $8
                (i32.add
                  (get_local $5)
                  (i32.const -1)
                )
              )
              (loop $label$7
                (set_local $0
                  (i32.load offset=68
                    (get_local $0)
                  )
                )
                (br_if $label$7
                  (tee_local $8
                    (i32.add
                      (get_local $8)
                      (i32.const -1)
                    )
                  )
                )
              )
            )
            (br_if $label$2
              (i32.ge_u
                (get_local $7)
                (get_local $4)
              )
            )
            (br $label$0)
          )
        )
        (set_local $8
          (get_local $0)
        )
        (set_local $0
          (tee_local $3
            (i32.load offset=68
              (get_local $0)
            )
          )
        )
        (br_if $label$1
          (i32.ne
            (tee_local $4
              (i32.add
                (get_local $6)
                (i32.const 1)
              )
            )
            (get_local $2)
          )
        )
      )
    )
    (get_local $0)
  )
  (func $_ZN6memory12AddressStore5allocEj (param $0 i32) (param $1 i32) (result i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    (local $7 i32)
    (set_local $6
      (i32.add
        (get_local $0)
        (i32.const 8)
      )
    )
    (set_local $3
      (i32.add
        (get_local $0)
        (i32.const 4)
      )
    )
    (set_local $5
      (i32.const 1)
    )
    (block $label$0
      (block $label$1
        (br_if $label$1
          (i32.lt_u
            (tee_local $2
              (i32.load
                (get_local $0)
              )
            )
            (i32.const 2)
          )
        )
        (set_local $4
          (i32.const 1)
        )
        (set_local $5
          (i32.const 1)
        )
        (loop $label$2
          (br_if $label$1
            (i32.ge_u
              (call $_ZN6memory7Address10getSpaceToEPS0_
                (get_local $6)
                (tee_local $7
                  (i32.add
                    (i32.add
                      (get_local $3)
                      (i32.shl
                        (get_local $5)
                        (i32.const 3)
                      )
                    )
                    (i32.const 4)
                  )
                )
              )
              (get_local $1)
            )
          )
          (block $label$3
            (br_if $label$3
              (i32.ne
                (tee_local $5
                  (i32.add
                    (get_local $5)
                    (i32.const 1)
                  )
                )
                (i32.const 8)
              )
            )
            (set_local $3
              (i32.load offset=68
                (get_local $3)
              )
            )
            (set_local $5
              (i32.const 0)
            )
          )
          (set_local $6
            (get_local $7)
          )
          (br_if $label$2
            (i32.lt_u
              (tee_local $4
                (i32.add
                  (get_local $4)
                  (i32.const 1)
                )
              )
              (get_local $2)
            )
          )
          (br $label$0)
        )
      )
      (set_local $7
        (get_local $6)
      )
    )
    (set_local $6
      (i32.const 0)
    )
    (block $label$4
      (br_if $label$4
        (i32.eqz
          (call $_ZN6memory12AddressChunk6insertEjPvj
            (get_local $3)
            (get_local $5)
            (tee_local $7
              (i32.add
                (i32.load offset=4
                  (get_local $7)
                )
                (i32.load
                  (get_local $7)
                )
              )
            )
            (get_local $1)
          )
        )
      )
      (i32.store
        (get_local $0)
        (tee_local $5
          (i32.add
            (i32.load
              (get_local $0)
            )
            (i32.const 1)
          )
        )
      )
      (set_local $6
        (get_local $7)
      )
      (br_if $label$4
        (i32.ne
          (i32.and
            (get_local $5)
            (i32.const 7)
          )
          (i32.const 7)
        )
      )
      (set_local $6
        (i32.const 0)
      )
      (br_if $label$4
        (i32.eqz
          (tee_local $4
            (call $_ZN6memory12AddressStore5allocEj
              (get_local $0)
              (i32.const 72)
            )
          )
        )
      )
      (call $_ZN6memory12AddressChunk5clearEv
        (get_local $4)
      )
      (loop $label$5
        (br_if $label$5
          (tee_local $3
            (i32.load offset=68
              (tee_local $5
                (get_local $3)
              )
            )
          )
        )
      )
      (i32.store
        (i32.add
          (get_local $5)
          (i32.const 68)
        )
        (get_local $4)
      )
      (set_local $6
        (get_local $7)
      )
    )
    (get_local $6)
  )
  (func $_ZN6memory12AddressStore7reallocEPvj (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (set_local $5
      (i32.const 0)
    )
    (block $label$0
      (br_if $label$0
        (i32.eqz
          (get_local $1)
        )
      )
      (br_if $label$0
        (i32.eqz
          (tee_local $3
            (call $_ZN6memory12AddressStore4findEPv
              (get_local $0)
              (get_local $1)
            )
          )
        )
      )
      (br_if $label$0
        (i32.eq
          (tee_local $4
            (call $_ZN6memory12AddressChunk4findEPv
              (get_local $3)
              (get_local $1)
            )
          )
          (i32.const 8)
        )
      )
      (br_if $label$0
        (i32.ne
          (i32.load
            (i32.add
              (i32.add
                (get_local $3)
                (i32.shl
                  (get_local $4)
                  (i32.const 3)
                )
              )
              (i32.const 4)
            )
          )
          (get_local $1)
        )
      )
      (br_if $label$0
        (i32.eqz
          (tee_local $0
            (call $_ZN6memory12AddressStore5allocEj
              (get_local $0)
              (get_local $2)
            )
          )
        )
      )
      (set_local $5
        (call $_ZN6memory6memcpyEPvS0_j
          (get_local $0)
          (get_local $1)
          (i32.load
            (i32.add
              (i32.add
                (get_local $3)
                (i32.shl
                  (get_local $4)
                  (i32.const 3)
                )
              )
              (i32.const 8)
            )
          )
        )
      )
      (call $_ZN6memory4freeEPv
        (get_local $1)
      )
    )
    (get_local $5)
  )
  (func $_ZN6memory6memcpyEPvS0_j (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
    (local $3 i32)
    (block $label$0
      (br_if $label$0
        (i32.eqz
          (get_local $2)
        )
      )
      (set_local $3
        (get_local $0)
      )
      (loop $label$1
        (i32.store8
          (get_local $3)
          (i32.load8_u
            (get_local $1)
          )
        )
        (set_local $3
          (i32.add
            (get_local $3)
            (i32.const 1)
          )
        )
        (set_local $1
          (i32.add
            (get_local $1)
            (i32.const 1)
          )
        )
        (br_if $label$1
          (tee_local $2
            (i32.add
              (get_local $2)
              (i32.const -1)
            )
          )
        )
      )
    )
    (get_local $0)
  )
  (func $_ZN6memory4freeEPv (param $0 i32)
    (call $_ZN6memory12AddressStore7deallocEPv
      (i32.const 0)
      (get_local $0)
    )
  )
  (func $_ZN6memory12AddressStore7deallocEPv (param $0 i32) (param $1 i32)
    (local $2 i32)
    (local $3 i32)
    (block $label$0
      (br_if $label$0
        (i32.eqz
          (get_local $1)
        )
      )
      (br_if $label$0
        (i32.eqz
          (tee_local $3
            (call $_ZN6memory12AddressStore4findEPv
              (get_local $0)
              (get_local $1)
            )
          )
        )
      )
      (br_if $label$0
        (i32.eq
          (tee_local $2
            (call $_ZN6memory12AddressChunk4findEPv
              (get_local $3)
              (get_local $1)
            )
          )
          (i32.const 8)
        )
      )
      (br_if $label$0
        (i32.ne
          (i32.load
            (i32.add
              (i32.add
                (get_local $3)
                (i32.shl
                  (get_local $2)
                  (i32.const 3)
                )
              )
              (i32.const 4)
            )
          )
          (get_local $1)
        )
      )
      (br_if $label$0
        (i32.eqz
          (call $_ZN6memory12AddressChunk6removeEj
            (get_local $3)
            (get_local $2)
          )
        )
      )
      (i32.store
        (get_local $0)
        (tee_local $1
          (i32.add
            (i32.load
              (get_local $0)
            )
            (i32.const -1)
          )
        )
      )
      (br_if $label$0
        (i32.ne
          (i32.and
            (get_local $1)
            (i32.const 7)
          )
          (i32.const 7)
        )
      )
      (set_local $1
        (get_local $3)
      )
      (loop $label$1
        (set_local $2
          (get_local $1)
        )
        (br_if $label$1
          (tee_local $3
            (i32.load offset=68
              (tee_local $1
                (get_local $3)
              )
            )
          )
        )
      )
      (call $_ZN6memory12AddressStore7deallocEPv
        (get_local $0)
        (i32.load offset=68
          (get_local $2)
        )
      )
      (i32.store offset=68
        (get_local $2)
        (i32.const 0)
      )
    )
  )
  (func $_ZN6memory12AddressStore4initEv (result i32)
    (drop
      (call $_ZN6memory12AddressStore5clearEv
        (i32.const 0)
      )
    )
    (i32.const 0)
  )
  (func $_ZN6memory12AddressStore3getEv (result i32)
    (i32.const 0)
  )
  (func $_Z4initv
    (drop
      (call $_ZN6memory12AddressStore4initEv)
    )
  )
  (func $_Znwj (param $0 i32) (result i32)
    (call $_ZN6memory12AddressStore5allocEj
      (i32.const 0)
      (get_local $0)
    )
  )
  (func $_Znaj (param $0 i32) (result i32)
    (call $_ZN6memory12AddressStore5allocEj
      (i32.const 0)
      (get_local $0)
    )
  )
  (func $_ZdlPv (param $0 i32)
    (call $_ZN6memory12AddressStore7deallocEPv
      (i32.const 0)
      (get_local $0)
    )
  )
  (func $_ZdaPv (param $0 i32)
    (call $_ZN6memory12AddressStore7deallocEPv
      (i32.const 0)
      (get_local $0)
    )
  )
  (func $_ZN6memory6mallocEj (param $0 i32) (result i32)
    (call $_ZN6memory12AddressStore5allocEj
      (i32.const 0)
      (get_local $0)
    )
  )
  (func $_ZN6memory7reallocEPvj (param $0 i32) (param $1 i32) (result i32)
    (call $_ZN6memory12AddressStore7reallocEPvj
      (i32.const 0)
      (get_local $0)
      (get_local $1)
    )
  )
  (func $_ZN6memory6memsetEPvhj (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
    (local $3 i32)
	(block $label$0
      (br_if $label$0
        (i32.eqz
          (get_local $2)
        )
      )
      (set_local $3
        (get_local $0)
      )
      (loop $label$1
        (i32.store8
          (get_local $3)
          (get_local $1)
        )
        (set_local $3
          (i32.add
            (get_local $3)
            (i32.const 1)
          )
        )
        (br_if $label$1
          (tee_local $2
            (i32.add
              (get_local $2)
              (i32.const -1)
            )
          )
        )
	  )
    )
    (get_local $0)
  )
)
