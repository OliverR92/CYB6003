#!/usr/bin/python3
import hashlib
import itertools
#hidden password hash
passwordHash = "2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824"

# possible characters in user password
ALPHABET = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890-_.;#@"
# password length
LENGTH = 6

from itertools import chain, product
#Iterates through the combinations of the alphabet variable up to the desired length which has been set to 6
for word in itertools.product(ALPHABET, repeat=LENGTH):
    #hash the word
    wordlistHash = hashlib.sha256(word.encode("utf-8")).hexdigest()
    print(f"Trying password {word}:{wordlistHash}")
    #if the hash is the same as the correct password's hash then we have cracked the password!
    if(wordlistHash == passwordHash):
        print(f"Password has been cracked! It was {word}")
        break