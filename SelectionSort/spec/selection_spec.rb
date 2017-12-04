require_relative '../lib/selection.rb'

describe '#selection_sort' do

context 'testy' do
  it "wroci posty masyw" do
    expect(SelectionSort([])).to eq []
  end

	 it "posortuje od min do max" do
	    expect(SelectionSort([66,15,30,20,33,11])).to end_with 66
	  end
	end

	context 'int masyw' do
		 it "test ze spacja" do
		an_array=[7, 6, 15, 2, 11, 99]
		expect(SelectionSort(an_array)).to eq([2, 6, 7, 11, 15, 99])
	end

 it "ujemne liczby" do
       	an_array=[-50,-7,-9,-98,-5,-4]
       	expect(SelectionSort(an_array)).to eq([-98,-50,-9,-7,-5,-4])
        end


it "najgorsze rostawienie liczb" do
	an_array=[55,44,41,38,25,15,11,5]
	expect(SelectionSort(an_array)).to eq([5,11,15,25,38,41,44,55])
end

	 it "podwojne liczby" do
              an_array=[7, 6, 15, 2, 11, 99, 6, 15, 2]
              expect(SelectionSort(an_array)).to eq([2,2, 6,6, 7, 11, 15, 15, 9])
       	end


it "najgorze rostawienie ujemnych liczb" do
	an_array=[-4,-10,-15,-50,-61,-72]
	expect(SelectionSort(an_array)).to eq([-72,-61,-50,-15,-10,-4])
end

	it "razem ujemne i poztywne liczby" do
		an_array=[-50,7,-9,12,-5,8]
		expect(SelectionSort(an_array)).to eq([-50,-9,-5,7,8,12])
	end
end

context 'liczby z kropka' do
it "sortowanie liczb z kropka" do
	an_array=[4.5,9.4,3.5,2.2,7.7,5.3]
	expect(SelectionSort(an_array)).to eq([2.2,3.5,4.5,5.3,7.7,9.4])
end

	it "dwie liczby po kropce" do
		an_array=[200.41,198.55,125.6,88.66,7.3,3.7,1.2]
		expect(SelectionSort(an_array)).to eq([1.2,3.7,7.3,88.66,125.6,198.55,200.41])
	end

it "ujemne" do
	an_array=[-9.2,-5.5,-10.5,-99.8,-0.5]
	expect(SelectionSort(an_array)).to eq([-99.8,-10.5,-9.2,-5.5,-0.5])
end

it "ujene i pozytywne" do
	an_array=[-7.5,5.9,7.2,-91.71,-91.72,35.1]
	expect(SelectionSort(an_array)).to eq([-91.72,-91.71,-7.5,5.9,7.2,35.1])
end
end

	context 'int i decimal' do
	it "int i dec" do
		an_array=[5.5,6,7.5,9.2,3,7,10.5,10,10.1]
		expect(SelectionSort(an_array)).to eq([3,5.5,6,7,7.5,9.2,10,10.1,10.5])
	end

it "najgorzej uztawione" do
	an_array=[101,95.0,66.5,55,41.8,41.7,41,5]
	expect(SelectionSort(an_array)).to eq([5,41,41.7,41.8,55,66.5,95.0,101])
end

	it "ujemne - poz" do
		an_array=[105,-105.5,-105.4,-6,5,78,60,15.5,3]
		expect(SelectionSort(an_array)).to eq([-105.5,-105.4,-6,3,5,15.5,60,78,105])
	end
	

it "int i dec razem" do
	an_array=[3,3,7,2,2.1,5.4,6,5.4,9,3]
	expect(SelectionSort(an_array)).to eq([2,2.1,3,3,3,5.4,5.4,6,7,9])
end
end

context 'litery i napisy' do
it "sortujemy liczby" do
	an_array=['a','u','y','z','g']
	expect(SelectionSort(an_array)).to eq(['a','g','u','y','z'])
end

it "najgorzej ustawionr" do
	an_array=['z','x','n','m','d','c']
	expect(SelectionSort(an_array)).to eq(['c','d','m','n','x','z'])
end
it "sortuje slowa" do
	an_array=%w[chce miec zaliczenie]
	expect(SelectionSort(an_array)).to match_array(%w[chce miec zaliczenie])
end
end


end


