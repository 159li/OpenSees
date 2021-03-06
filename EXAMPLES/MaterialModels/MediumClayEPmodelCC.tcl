# 
# Template elasto-plastic material model for medium clay, Cam-Clay yield surface
# rho = 1.5 ton/m^3 
# Young's modulus = 169200 kpa, 
# Possion Ratio = 0.406, 
# M = 1.2
# lambda = 0.19
# kappa = 0.06
# p0 = 200.1kpa

# Aug. 12, 2002  Feng Xiong
# 														 Boris Jeremic (@ucdavis.edu)


# Yield surface
set DPys "-CC M=1.2"

# Potential surface
set DPps "-CC 1.2"

# Scalar evolution law--void ratio-----Lamda---Kappa
set ES1 "-NLp           0.85           0.19    0.06"

# Tensorial evolution law
set ET1 "-Linear 0.0"

# Initial stress
set stressp 0.1 0 0 0 0.1 0 0 0 0.1

# EPState
#------------E--------Eo--------v----rho------------------po
set EPS "169200.0  169200.0    0.406  1.5  -NOD 0 -Nos 1  200.1 -stressp $stressp"

# Create nDMaterial using Template Elastic-Plastic Model
nDMaterial Template3Dep 1400 -YS $DPys -PS $DPps -EPS $EPS -ELS1 $ES1

 
