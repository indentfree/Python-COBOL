import unittest
import os
import cobol

class test_cobol(unittest.TestCase):

    def test_process_cobol(self) :

        #---------------
        # ARRANGE
        #---------------
        # Check file exist
        filename="./cobol-test.cpy"
        if not os.path.isfile(filename):
            print "Could not find", filename
            exit()

        # read content
        with open(filename,'r') as f:
            content=f.readlines()


        #---------------
        # ACT
        #---------------
        len=0;
        nb_fields=0
        for row in cobol.process_cobol(content):
            if (row.has_key('pic_info') and row['pic_info'].has_key('length' )) :
                len=len+row['pic_info']['length']
                nb_fields=nb_fields+1
            print row

        #---------------
        # ASSERT
        #---------------
        expected_len=400;
        expected_nb_fields=47
        self.assertEqual(expected_len,      len,      " check total length")
        self.assertEqual(expected_nb_fields,nb_fields," check total nb_fields")


if __name__ == '__main__':
    unittest.main()
#suite = unittest.TestLoader().loadTestsFromTestCase(test_cobol)
#unittest.TextTestRunner(verbosity=2).run(suite)
