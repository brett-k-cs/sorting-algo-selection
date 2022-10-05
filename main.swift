var unsortedStrings = [String]();

while let line = readLine() {
    if(line.count == 0) {break;}
    unsortedStrings.append(line)
}

// Add your code below:

func swap(integers: inout [String], firstIndex:Int, secondIndex:Int) { // Swap two places in an integer array
    let temp = integers[secondIndex]
    integers[secondIndex] = integers[firstIndex]
    integers[firstIndex] = temp
}

var strings = unsortedStrings

var passes = 0;
var totalSwaps = 0;

print("Pass: \(passes), Swaps: 0/\(totalSwaps), Array: \(strings)")

// loop through the array from 0 until 1 to end (excluding last bc it will have already been swapped)
for i in 0 ..< strings.count - 1 {
    var minI = i;

    // list through the rest of the array, finding the smallest value and saving that index
    for j in i + 1 ..< strings.count {
        if(strings[j] < strings[minI]) {
         minI = j      
        }
    }

    // actually do the swap
    swap(integers: &strings, firstIndex: i, secondIndex: minI)
    
    // output the wanted string
    passes += 1;
    totalSwaps += 1;
    //    print("Pass: \(passes), Swaps: 1/\(totalSwaps), Array: \(strings)")
}

print(strings)
