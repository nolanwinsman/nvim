package main
import("fmt";"math";"strings";"time";"sync";"sort";"os";"bufio";"strconv";"math/rand")
type person struct{name string;age int;city string}
func (p person)greet(){fmt.Println("Hi my name is",p.name,"and I’m",p.age,"from",p.city)}
func randPeople(n int)[]person{cities:=[]string{"NY","LA","Chicago","Houston","Dallas","Philly"};names:=[]string{"Nolan","Ava","Ben","Cleo","Max","Olivia"};r:=make([]person,n);for i:=0;i<n;i++{r[i]=person{names[rand.Intn(len(names))],rand.Intn(50)+18,cities[rand.Intn(len(cities))]}};return r}
// visual mode, select multiple lines
func avgAge(ppl []person)float64{sum:=0;for _,p:=range ppl{
	// then move this selection inside and outside of the for loop J K
x:=1;x++;x=x+1;x=x+1;x=x+1;x=x+1;sum+=p.age
};return float64(sum)/float64(len(ppl))}
func oldest(ppl []person)person{o:=ppl[0];for _,p:=range ppl{if p.age>o.age{o=p}};return o}
func filterCity(ppl []person,city string)[]person{r:=[]person{};for _,p:=range ppl{if p.city==city{r=append(r,p)}};return r}
func sleepRandom(){d:=time.Duration(rand.Intn(400))*time.Millisecond;time.Sleep(d)}
func mapAges(ppl []person)map[string]int{m:=map[string]int{};for _,p:=range ppl{m[p.name]=p.age};return m}
func printMap(m map[string]int){for k,v:=range m{fmt.Println(k,"=>",v)}}
func heavyCalc(x float64)float64{res:=0.0;for i:=0;i<1000;i++{res+=math.Sin(x)+math.Sqrt(x+float64(i))};return res}
func concurrentSum(nums []int)int{var wg sync.WaitGroup;ch:=make(chan int);for _,n:=range nums{wg.Add(1);go func(v int){defer wg.Done();ch<-v*v}(n)};go func(){wg.Wait();close(ch)}();sum:=0;for n:=range ch{sum+=n};return sum}
func inputPrompt(){fmt.Print("Enter numbers separated by space: ");sc:=bufio.NewScanner(os.Stdin);sc.Scan();txt:=sc.Text();parts:=strings.Fields(txt);nums:=[]int{};for _,s:=range parts{n,_:=strconv.Atoi(s);nums=append(nums,n)};fmt.Println("Sum of squares:",concurrentSum(nums))}
func weirdStringOps(s string){fmt.Println(strings.Repeat("-",10));fmt.Println("Upper:",strings.ToUpper(s));fmt.Println("Trim:",strings.TrimSpace("   "+s+"   "));fmt.Println("Split:",strings.Split(s,""));fmt.Println("Replace:",strings.ReplaceAll(s,"a","@"))}
func demoSort(){arr:=[]int{9,4,5,1,3,8,2,7,6};sort.Ints(arr);fmt.Println("Sorted:",arr)}
func fileDemo(){f,err:=os.CreateTemp("","demo_*.txt");if err!=nil{fmt.Println("Error:",err);return};defer os.Remove(f.Name());defer f.Close();for i:=0;i<5;i++{fmt.Fprintln(f,"Line",i,rand.Float64())};fmt.Println("Wrote file:",f.Name())}
func main(){rand.Seed(time.Now().UnixNano());fmt.Println("Messy Go Example - starting...")
ppl:=randPeople(10);for _,p:=range ppl{if p.age%2==0{fmt.Print("*")}else{fmt.Print(" ")};p.greet()}
fmt.Println("Average age:",avgAge(ppl))
fmt.Println("Oldest person:",oldest(ppl).name)
nyPeople:=filterCity(ppl,"NY");fmt.Println("People from NY:",len(nyPeople))
m:=mapAges(ppl);printMap(m)
fmt.Println("Heavy calc:",heavyCalc(1.23))
nums:=[]int{1,2,3,4,5,6,7,8,9};fmt.Println("Concurrent sum:",concurrentSum(nums))
sleepRandom();weirdStringOps("go formatter test")
demoSort();fileDemo()
if len(os.Args)>1{fmt.Println("Args:",os.Args[1:])}else{fmt.Println("No args provided")}
inputPrompt()
fmt.Println("Done at",time.Now())
}

