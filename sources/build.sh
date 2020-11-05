# source venv/bin/activate
set -e

mkdir -p ../fonts ../fonts/ttf ../fonts/ttf/static #../fonts/otf ../fonts/woff2

function postprocess_vf {
    gftools fix-nonhinting $1 $1.fix
    mv $1.fix $1
    gftools fix-dsig -f $1
    gftools fix-unwanted-tables $1 -t MVAR
}

echo "GENERATING VFs"
VF_FILE=../fonts/ttf/SofiaSans\[wdth,wght]\.ttf
fontmake -g SofiaSans-VF_a.glyphs -o variable --output-path $VF_FILE

VF_FILEit=../fonts/ttf/SofiaSans-Italic\[wdth,wght]\.ttf
fontmake -g SofiaSans_Italic_VF_a.glyphs -o variable --output-path $VF_FILEit


# echo "POST PROCESSING VFs"

# postprocess_vf $VF_FILE
# postprocess_vf $VF_FILEit

# python3 karla_stat_table.py $VF_FILE
# # python3 gen_stat.py $VF_FILE

# rm ../fonts/ttf/*gasp.ttf


# echo "GENERATING TTFs"
# fontmake -g Karla-Roman.glyphs -i -o ttf --output-dir ../fonts/ttf/static

# echo "POST PROCESSING TTFs"
# ttfs=$(ls ../fonts/ttf/static/*.ttf)
# for ttf in $ttfs
# do
# 	ttfautohint $ttf "$ttf.fix";
# 	mv "$ttf.fix" $ttf;
	
# 	gftools fix-dsig -f $ttf;
    
# 	gftools fix-hinting $ttf;
#     mv "$ttf.fix" $ttf;
	
# 	#compressing for woff2
# 	#fonttools ttLib.woff2 compress $ttf
    
# done

# echo "GENERATING OTFs"
# fontmake -g Karla-Roman.glyphs -i -o otf --output-dir ../fonts/otf/

# echo "POST PROCESSING OTFs"
# otfs=$(ls ../fonts/otf/*.otf)
# for otf in $otfs
# do
#     gftools fix-dsig -f $otf;
#     gftools fix-weightclass $otf;
#     #mv "$otf.fix" $otf;
# 	[ -f $otf.fix ] && mv $otf.fix $otf;
#     # psautohint $otf;
# done


# rm -rf master_ufo/ instance_ufo/

# # echo "WOFF2 for static and vf"

# # mv ../fonts/ttf/*.woff2 ../fonts/woff2
# # mv ../fonts/ttf/static/*.woff2 ../fonts/woff2/static
