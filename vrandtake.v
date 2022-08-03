module main
import os
import flag
import rand
fn get_rand_idx(n int) ?[]int{
	mut l := []int{}
	for i := 0; i<n; i++ {
		x := rand.intn(n)?
		if x in l {
			i--
			continue
		}else{
			l << x
		}
	}
	return l
}
fn main() {
	mut fp := flag.new_flag_parser(os.args)
	fp.application('RandPick')
	fp.version('0.8.0')
	fp.description('This is an cli app that is very more powerfull than RandTake')
	fp.skip_executable()

	input := fp.string('input', `i`, '', 'Enter the input folder name').to_lower()
	output := fp.string('output', `o`, '', 'Enter the output folder name').to_lower()
	size := fp.int('size', `s`, 0, 'Enter the size of the input')
	// seed := fp.int('seed', `c`, -1, 'Enter the seed value')

	if input == '' || output == '' || size == 0 {
		println('Can\'t Understand')
		exit(0)
	}
	if !os.exists(output) {
		os.mkdir(output)?
	}
	files := os.ls(input)?
	random_idx := get_rand_idx(size)?
	for i in random_idx{
		os.cp(os.join_path_single(input, files[i]), os.join_path_single(output, files[i]))?
	}
}
