$(function(){
  var majors = [
    'Heath Promotion', 'Health Studies', 'Kinesiology', 'Recreation and Leisure Studies', 
    'Accounting and Financial Management', 'Anthropology', 'Political Science', 'Psychology', 
    'Sociology', 'Arts and Business (with Honours)', 'Classical Studies', 'Drama', 
    'Economics/Mathematical Economics', 'English', 'Fine Arts', 'French', 'German', 'History', 
    'Legal Studies', 'Medieval Studies', 'Music', 'Peace and Conflict Studies', 'Philosophy', 
    'Religious Studies', 'Russian and East European Studies', 'Sexuality', 
    'Marriage and Family Studies', 'Social Development Studies', 'Sociology', 'Spanish', 
    'Speech Communication', "Women's Studies", 
    'Arts and Business: Digital Arts Communication Specialization', 
    'Arts and Business: International Trade Specialization', 'Computing and Financial Management', 
    'Economics', 'English - Literature', 'English - Literature and Rhetoric', 
    'English - Rhetoric and Professional Writing', 'Architecture', 'Biomedical Engineering', 
    'Chemical Engineering', 'Civil Engineering', 'Computer Engineering', 'Electrical Engineering', 
    'Management Engineering', 'Mechanical Engineering', 'Mechatronics Engineering', 
    'Environmental Engineering', 'Geological Engineering', 'Systems Design Engineering', 
    'Nanotechnology Engineering', 'Software Engineering', 'Environment and Business', 
    'Environment and Resource Studies', 'Geography and Environmental Management', 'Geomatics', 
    'Planning', 'Actuarial Science', 'Applied Mathematics', 'Combinatorics & Optimization', 
    'Computational Mathematics', 'Computer Science', 'Information Technology Management', 
    'Mathematical Economics', 'Mathematical Finance', 'Honours Math', 'Mathematical Optimization', 
    'Mathematical Studies', 'Mathematics/Business Administration', 
    'Mathematics/Financial Analysis and Risk Management', 'Pure Mathematics', 
    'Scientific Computation/Applied Mathematics', 'Statistics', 'Statistics for Health', 
    'Bioinformatics', 'Business Administration and Computer Science', 
    'Business Administration and Mathematics', 'Mathematics/Chartered Professional Accountancy', 
    'Pure Mathematics/Teaching', 'Mathematics/Teaching', 'Mathematical Physics', 'Biochemistry', 
    'Biology', 'Biotechnology/Economics', 'Chemistry', 'Earth Sciences', 'Environmental Science', 
    'Medicinal Chemistry', 'Science and Business', 'Biotechnology/Chartered Professional Accountancy', 
    'Materials and Nanosciences', 'Physics', 'Mathematical Physics', 'Life Physics', 
    'Physics and Astronomy', 'Psychology', 'Pharmacy'
  ];
  
  // setup autocomplete function pulling from currencies[] array
    $('.autocompletem').autocomplete({
        lookup: majors
    });
});