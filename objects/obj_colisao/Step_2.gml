var _colx, _coly;

_colx = instance_place(x+velh,y, obj_bloco);
_coly = instance_place(x,y,obj_bloco);

if(_colx)
{
	//colisão a Direita
	if(velh > 0)
	{
		x = _colx.bbox_left+(x -bbox_right)
	}
	//colisão a esquerda
	if(velh < 0) 
	{ 
		x = _colx.bbox_right+(x -bbox_left)
	}
	velh = 0
}

if(_coly)
{
	//colisão a DireitA
	if(velv > 0)
	{
		xy= _colx.bbox_top+(y -bbox_bottom)
	}
	//colisão a esquerda
	if(velv  < 0) 
	{ 
		y = _colx.bbox_bottom+(y -bbox_top)
	}
	
	velh = 0
	
}
x += velh;
y += velv;