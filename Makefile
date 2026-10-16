# ============================================================
#  Makefile — projet pbm_V2
#  Compilation simple d'un programme C avec debug
# ============================================================

TARGET  = pbm_V2
SRC     = $(TARGET).c
CC      = gcc
CFLAGS  = -g -Wall -Wextra -pedantic -ansi
DEB     = gdb

# ------------------------------------------------------------
#  Cibles principales
# ------------------------------------------------------------

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) $< -o $@

# ------------------------------------------------------------
#  Cibles utilitaires
# ------------------------------------------------------------

edit: $(SRC)
	vi $(SRC)

run: $(TARGET)
	./$(TARGET)

gdb: $(TARGET)
	$(DEB) $(TARGET)

clean:
	rm -f $(TARGET)

re: clean all

# ------------------------------------------------------------
#  Déclarations .PHONY (cibles sans fichier associé)
# ------------------------------------------------------------

.PHONY: all edit run gdb clean re
