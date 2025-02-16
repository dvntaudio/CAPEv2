rule BuerLoader
{
    meta:
        author = "kevoreilly"
        cape_type = "BuerLoader"
    strings:
        $trap = {0F 31 89 45 ?? 6A 00 8D 45 ?? 8B CB 50 E8 [4] 0F 31}
        $decode = {8A 0E 84 C9 74 0E 8B D0 2A 0F 46 88 0A 42 8A 0E 84 C9 75 F4 5F 5E 5D C2 04 00}
    condition:
        uint16(0) == 0x5A4D and any of them
}