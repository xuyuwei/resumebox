$(function(){
  var faculties = [
    "Applied Health Sciences",
    "Arts",
    "Engineering",
    "Environment",
    "Mathematics",
    "Science"
  ];
  
  // setup autocomplete function pulling from currencies[] array
  $('#autocompletef').autocomplete({
    lookup: faculties
  });
  

});