import sys
import subprocess


def convert(source):
    return subprocess.check_output([sys.executable, '../musicxml2ly.py', source, '-o-'],
                                   env=dict(PYTHONPATH='../../python'))


def test_tempo_text():
    result = convert('tempo-test.musicxml')
    assert r'\tempo "Andante" 4=80' in result
