.class public Lcom/ooyala/android/VASTSequenceItem;
.super Ljava/lang/Object;
.source "VASTSequenceItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/ooyala/android/VASTSequenceItem;",
        ">;"
    }
.end annotation


# instance fields
.field private _companions:Lorg/w3c/dom/Element;

.field private _linear:Lcom/ooyala/android/VASTLinearAd;

.field private _nonLinears:Lorg/w3c/dom/Element;

.field private _number:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, -0x1

    iput v0, p0, Lcom/ooyala/android/VASTSequenceItem;->_number:I

    .line 9
    iput-object v1, p0, Lcom/ooyala/android/VASTSequenceItem;->_linear:Lcom/ooyala/android/VASTLinearAd;

    .line 11
    iput-object v1, p0, Lcom/ooyala/android/VASTSequenceItem;->_nonLinears:Lorg/w3c/dom/Element;

    .line 13
    iput-object v1, p0, Lcom/ooyala/android/VASTSequenceItem;->_companions:Lorg/w3c/dom/Element;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/ooyala/android/VASTSequenceItem;)I
    .locals 2

    .prologue
    .line 28
    iget v0, p0, Lcom/ooyala/android/VASTSequenceItem;->_number:I

    invoke-virtual {p1}, Lcom/ooyala/android/VASTSequenceItem;->getNumber()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    .line 30
    :goto_0
    return v0

    .line 29
    :cond_0
    iget v0, p0, Lcom/ooyala/android/VASTSequenceItem;->_number:I

    invoke-virtual {p1}, Lcom/ooyala/android/VASTSequenceItem;->getNumber()I

    move-result v1

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 5
    check-cast p1, Lcom/ooyala/android/VASTSequenceItem;

    invoke-virtual {p0, p1}, Lcom/ooyala/android/VASTSequenceItem;->compareTo(Lcom/ooyala/android/VASTSequenceItem;)I

    move-result v0

    return v0
.end method

.method public getCompanions()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/ooyala/android/VASTSequenceItem;->_companions:Lorg/w3c/dom/Element;

    return-object v0
.end method

.method public getLinear()Lcom/ooyala/android/VASTLinearAd;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ooyala/android/VASTSequenceItem;->_linear:Lcom/ooyala/android/VASTLinearAd;

    return-object v0
.end method

.method public getNonLinears()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ooyala/android/VASTSequenceItem;->_nonLinears:Lorg/w3c/dom/Element;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/ooyala/android/VASTSequenceItem;->_number:I

    return v0
.end method

.method public hasLinear()Z
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ooyala/android/VASTSequenceItem;->_linear:Lcom/ooyala/android/VASTLinearAd;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCompanions(Lorg/w3c/dom/Element;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/ooyala/android/VASTSequenceItem;->_companions:Lorg/w3c/dom/Element;

    .line 95
    return-void
.end method

.method public setLinear(Lcom/ooyala/android/VASTLinearAd;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/ooyala/android/VASTSequenceItem;->_linear:Lcom/ooyala/android/VASTLinearAd;

    .line 63
    return-void
.end method

.method public setNonLinears(Lorg/w3c/dom/Element;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/ooyala/android/VASTSequenceItem;->_nonLinears:Lorg/w3c/dom/Element;

    .line 79
    return-void
.end method

.method public setNumber(I)V
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/ooyala/android/VASTSequenceItem;->_number:I

    .line 47
    return-void
.end method
