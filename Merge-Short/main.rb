#on input of n elements
#if n < 2
# return
#else
# sort left half of elements
# sort right half of elements
# merge sorted elements

#@param the_array[Array]
def merge_sort(the_array)
    if the_array.length < 2
        return the_array
    else
        left = the_array[0..(the_array.length/2) - 1]
        right = the_array[the_array.length/2..-1]

        left_half = merge_sort(left)
        right_half = merge_sort(right)
      
        # Sort
        merged_array = []

        until right_half.empty? && left_half.empty?

            unless right_half.empty? || left_half.empty?

                if right_half[0] > left_half[0]
                    merged_array.push(left_half.shift)
                else
                    merged_array.push(right_half.shift)
                end

            end

            if right_half.empty? 
                merged_array.push(left_half.shift)                
            elsif left_half.empty?
                merged_array.push(right_half.shift)
            end

        end

        # End of sort

        return merged_array

    end
end

p merge_sort([8,4,6,2,1,7,5,3])

p merge_sort([2457,15100,17705,14966,7888,11066,2864,19056,9465,5730,11794,19692,18495,9937,9364,4888,5650,12924,1059,11380,14992,16291,9560,13495,2028,4817,811,1987,7391,5635,19441,6921,3666,18784,13774,2191,17131,11641,16993,18614,13112,6691,6944,9864,11735,14435,4043,1271,12588,19539,11288,13155,102,15182,12204,3847,9590,11205,9300,18741,12936,16796,9571,3695,5864,6756,9091,14517,127,2008,18748,12013,7111,2863,4663,17034,7963,4016,7135,9904,19960,8793,16617,18531,12635,18665,4019,507,9465,9962,4863,15924,16540,18691,13511,14705,7759,10401,13330,6085])