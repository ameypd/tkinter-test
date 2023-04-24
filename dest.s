
# MIPS assembly generated using lscc

.data



.text

    .globl main
    .align 4
main:
    addiu   $sp, $sp, -136
    sw      $fp, 132($sp)
    sw      $31, 128($sp)
    move    $fp, $sp
    sw      $4, 136($fp)
    sw      $5, 140($fp)
    sw      $6, 144($fp)
    sw      $7, 148($fp)
  fnc_main_code:
    li      $8, 10
    sw      $8, 72($fp)
    nop
    addiu   $8, $fp, 104
    sw      $8, 16($fp)
    nop
    lw     $3, 16($fp)
    nop
    lw     $8, 72($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
    li      $8, 20
    sw      $8, 76($fp)
    nop
    addiu   $8, $fp, 108
    sw      $8, 24($fp)
    nop
    lw     $3, 24($fp)
    nop
    lw     $8, 76($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
    li      $8, 1077172305
    li      $9, 3951369912
    sw      $8, 56($fp)
    sw      $9, 60($fp)
    nop
    addiu   $8, $fp, 112
    sw      $8, 32($fp)
    nop
    lw     $3, 32($fp)
    nop
    lw     $8, 56($fp)
    lw      $9, 60($fp)
    nop
    sw      $8, 0($fp)
    sw      $9, 4($fp)
    nop
    ldc1    $f0, 0($fp)
    nop
    cvt.s.d $f0, $f0
    swc1    $f0, 0($fp)
    nop
    lw      $10, 0($fp)
    nop
    sw      $10, 0($3)
    nop
    li      $8, 1077946686
    li      $9, 2639595806
    sw      $8, 64($fp)
    sw      $9, 68($fp)
    nop
    addiu   $8, $fp, 116
    sw      $8, 40($fp)
    nop
    lw     $3, 40($fp)
    nop
    lw     $8, 64($fp)
    lw      $9, 68($fp)
    nop
    move    $10, $8
    move    $11, $9
    sw      $10, 0($3)
    sw      $11, 4($3)
    nop
    move    $8, $0
    sw      $8, 80($fp)
    nop
    addiu   $8, $fp, 124
    sw      $8, 48($fp)
    nop
    lw     $3, 48($fp)
    nop
    lw     $8, 80($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
  while1_begin:
  while1_condition:
    li      $8, 10000
    sw      $8, 84($fp)
    nop
    li      $24, 1
    lw     $8, 124($fp)
    nop
    lw     $9, 84($fp)
    nop
    move    $10, $8
    move    $11, $9
    slt     $25, $11, $10
    beq     $25, $0, $L1
    nop
    li      $24, 0
   $L1:
    sw      $24, 92($fp)
    nop
    lw     $8, 92($fp)
    nop
    move    $10, $8
    bne     $10, $0, $L2
    nop
    j       while1_end
    nop
   $L2:
    addiu   $8, $fp, 104
    sw      $8, 20($fp)
    nop
    lw     $8, 104($fp)
    nop
    lw     $10, 108($fp)
    nop
    move    $12, $8
    move    $14, $10
    addu    $8, $12, $14
    sw      $8, 8($fp)
    nop
    lw     $3, 20($fp)
    nop
    lw     $8, 8($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
    addiu   $8, $fp, 108
    sw      $8, 28($fp)
    nop
    lw     $8, 108($fp)
    nop
    lw     $10, 124($fp)
    nop
    move    $12, $8
    move    $14, $10
    addu    $8, $12, $14
    sw      $8, 12($fp)
    nop
    lw     $3, 28($fp)
    nop
    lw     $8, 12($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
    addiu   $8, $fp, 116
    sw      $8, 44($fp)
    nop
    lw     $8, 116($fp)
    lw      $9, 120($fp)
    nop
    lw     $10, 112($fp)
    nop
    move    $12, $8
    move    $13, $9
    sw      $10, 0($fp)
    nop
    lwc1    $f0, 0($fp)
    nop
    cvt.d.s $f0, $f0
    sdc1    $f0, 0($fp)
    nop
    lw      $14, 0($fp)
    lw      $15, 4($fp)
    nop
    sw      $12, 0($fp)
    sw      $13, 4($fp)
    ldc1    $f0, 0($fp)
    sw      $14, 0($fp)
    sw      $15, 4($fp)
    ldc1    $f2, 0($fp)
    mul.d   $f0, $f0, $f2
    sdc1    $f0, 0($fp)
    lw      $8, 0($fp)
    lw      $9, 4($fp)
    nop
    sw      $8, 96($fp)
    sw      $9, 100($fp)
    nop
    lw     $3, 44($fp)
    nop
    lw     $8, 96($fp)
    lw      $9, 100($fp)
    nop
    move    $10, $8
    move    $11, $9
    sw      $10, 0($3)
    sw      $11, 4($3)
    nop
    addiu   $8, $fp, 112
    sw      $8, 36($fp)
    nop
    lw     $8, 112($fp)
    nop
    lw     $10, 104($fp)
    nop
    mtc1    $8, $f0
    trunc.w.s $f0, $f0
    mfc1    $12, $f0
    move    $14, $10
    div     $12, $14
    nop
    mflo    $8
    sw      $8, 52($fp)
    nop
    lw     $3, 36($fp)
    nop
    lw     $8, 52($fp)
    nop
    mtc1    $8, $f0
    cvt.s.w $f0, $f0
    mfc1    $10, $f0
    sw      $10, 0($3)
    nop
    j       while1_begin
    nop
  while1_end:
    move    $8, $0
    sw      $8, 88($fp)
    nop
    lw     $8, 88($fp)
    nop
    move    $2, $8
    j       fnc_main_return
    nop
  fnc_main_return:
    move    $sp, $fp
    lw      $31, 128($sp)
    lw      $fp, 132($sp)
    addiu   $sp, $sp, 136
    j       $31
    nop

