OCAMLC=ocamlc
OCAMLOPT=ocamlopt
OCAMLDEP=ocamldep
OCAMLLEX=ocamllex
OCAMLYACC=ocamlyacc

APPLI_OBJS=types.cmo lexer.cmo parser.cmo main.cmo

appli:$(APPLI_OBJS)
	$(OCAMLC) -o appli $(APPLI_OBJS)

types.cmo:types.ml
	$(OCAMLC) -c types.ml

parser.ml:parser.mly
	$(OCAMLYACC) parser.mly

parser.mli:parser.mly
	$(OCAMLYACC) parser.mly

parser.cmi:parser.mli
	$(OCAMLC) -c parser.mli

parser.cmo:parser.ml
	$(OCAMLC) -c parser.ml

lexer.ml:lexer.mll
	$(OCAMLLEX) lexer.mll

lexer.cmo:lexer.ml parser.cmi
	$(OCAMLC) -c lexer.ml

main.cmo:main.ml
	$(OCAMLC) -c main.ml

clean:
	rm -f types.cmo lexer.cmo parser.cmo eval.cmo main.cmo types.cmi lexer.cmi parser.cmi eval.cmi main.cmi parser.mli parser.ml lexer.ml
