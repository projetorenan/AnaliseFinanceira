/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package modelo;

/**
 *
 * @author Aluno
 */
public class Passos {
    
    private Lv1p1 lv1p1;
    private Lv1p2 lv1p2;
    private Lv1p3 lv1p3;
    private Lv1p4 lv1p4;
    
    private Lv2p1 lv2p1;
    private Lv2p2 lv2p2;
    private Lv2p3 lv2p3;
    private Lv2p4 lv2p4;

    public Lv1p1 getLv1p1() {
        return lv1p1;
    }

    public void setLv1p1(Lv1p1 lv1p1) {
        this.lv1p1 = lv1p1;
    }

    public Lv1p2 getLv1p2() {
        return lv1p2;
    }

    public void setLv1p2(Lv1p2 lv1p2) {
        this.lv1p2 = lv1p2;
    }

    public Lv1p3 getLv1p3() {
        return lv1p3;
    }

    public void setLv1p3(Lv1p3 lv1p3) {
        this.lv1p3 = lv1p3;
    }

    public Lv1p4 getLv1p4() {
        return lv1p4;
    }

    public void setLv1p4(Lv1p4 lv1p4) {
        this.lv1p4 = lv1p4;
    }

    public Lv2p1 getLv2p1() {
        return lv2p1;
    }

    public void setLv2p1(Lv2p1 lv2p1) {
        this.lv2p1 = lv2p1;
    }

    public Lv2p2 getLv2p2() {
        return lv2p2;
    }

    public void setLv2p2(Lv2p2 lv2p2) {
        this.lv2p2 = lv2p2;
    }

    public Lv2p3 getLv2p3() {
        return lv2p3;
    }

    public void setLv2p3(Lv2p3 lv2p3) {
        this.lv2p3 = lv2p3;
    }

    public Lv2p4 getLv2p4() {
        return lv2p4;
    }

    public void setLv2p4(Lv2p4 lv2p4) {
        this.lv2p4 = lv2p4;
    }
    
    
    
    
    public Double lotacaomedia (){
        //passo1
        Double areapec = this.getLv1p1().getArea_apro();
        //passo2
        Double bovino = this.getLv1p2().getLota_pro();
        Integer vacasdecria = this.getLv1p2().getVacadecria();
        Integer vacasdedescarte = this.getLv1p2().getVacadedescarte();
        Integer terneiro = this.getLv1p2().getTerneiro();
        Integer terneira = this.getLv1p2().getTerneira();
        Integer novilhos1 = this.getLv1p2().getNovilho1324();
        Integer novilhas1 = this.getLv1p2().getNovilha1324();
        Integer novilhos2 = this.getLv1p2().getNovilho2536();
        Integer novilhas2 = this.getLv1p2().getNovilha2536();
        Integer novilhos3 = this.getLv1p2().getNovilho36();
        Integer touros = this.getLv1p2().getTouro();
        
        if(bovino > 0)
        {   
            return bovino / areapec;       
        }
        else
        {
            Integer total = vacasdecria + vacasdedescarte + terneiro + terneira + novilhos1 + novilhas1 + novilhos2 + novilhas2 + novilhos3 + touros;
            return total / areapec;   
        }
        
    }
    public Double percentualcria (){
        //passo1
        Double areapec = this.getLv1p1().getArea_apro();
        //passo2
        Double bovino = this.getLv1p2().getLota_pro();
        Integer vacadecria = this.getLv1p2().getVacadecria();
        Integer bovinocria = this.getLv1p2().getVacadecria();
        Integer vacasdecria = this.getLv1p2().getVacadecria();
        Integer vacasdedescarte = this.getLv1p2().getVacadedescarte();
        Integer terneiro = this.getLv1p2().getTerneiro();
        Integer terneira = this.getLv1p2().getTerneira();
        Integer novilhos1 = this.getLv1p2().getNovilho1324();
        Integer novilhas1 = this.getLv1p2().getNovilha1324();
        Integer novilhos2 = this.getLv1p2().getNovilho2536();
        Integer novilhas2 = this.getLv1p2().getNovilha2536();
        Integer novilhos3 = this.getLv1p2().getNovilho36();
        Integer touros = this.getLv1p2().getTouro();
        
        if(bovino > 0)
        {   
            return (bovinocria * 100) / bovino;       
        }
        else
        {
            Integer total = vacasdecria + vacasdedescarte + terneiro + terneira + novilhos1 + novilhas1 + novilhos2 + novilhas2 + novilhos3 + touros;
            return ((vacadecria + touros + novilhas1 + novilhas2 + terneiro + terneira) * 100) / total;  
        } 
    }
}
