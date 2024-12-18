# #!/bin/bash
# for I in {1..100}; do
#     if [ $((I % 2)) -eq 0 ]; then
#         echo "$I is even"
#     else
#         echo "$I is odd"
#     fi
# done

# #!/bin/bash
# for I in {1..100}; do
#     if [ $(expr $I % 2) -eq 0 ]; then
#         echo "$I is even"
#     else
#         echo "$I is odd"
#     fi
# done

#Using while loop
I=0
while [ $I -lt 101 ]; do
    if [ $(expr $I % 2) -eq 0 ]; then
        echo "$I is even"
    else
        echo "$I is odd"
    fi
    I=$(($I + 1))
done
