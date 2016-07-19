.class public Lcom/yelp/android/serializable/Tip$TempTip;
.super Lcom/yelp/android/serializable/Tip;
.source "Tip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/Tip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TempTip"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/yelp/android/serializable/Tip;-><init>()V

    .line 305
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/yelp/android/serializable/Tip$TempTip;->f:Ljava/lang/String;

    .line 306
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Tip$TempTip;->a:Ljava/lang/String;

    .line 307
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/yelp/android/serializable/Tip$TempTip;->i:Ljava/lang/String;

    .line 308
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/Tip$TempTip;->b:Ljava/util/Date;

    .line 309
    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    invoke-super {p0}, Lcom/yelp/android/serializable/Tip;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 302
    invoke-super {p0}, Lcom/yelp/android/serializable/Tip;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    invoke-super {p0}, Lcom/yelp/android/serializable/Tip;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 302
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/Tip;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 302
    invoke-super {p0}, Lcom/yelp/android/serializable/Tip;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic k()I
    .locals 1

    .prologue
    .line 302
    invoke-super {p0}, Lcom/yelp/android/serializable/Tip;->k()I

    move-result v0

    return v0
.end method

.method public bridge synthetic l()I
    .locals 1

    .prologue
    .line 302
    invoke-super {p0}, Lcom/yelp/android/serializable/Tip;->l()I

    move-result v0

    return v0
.end method

.method public bridge synthetic m()Z
    .locals 1

    .prologue
    .line 302
    invoke-super {p0}, Lcom/yelp/android/serializable/Tip;->m()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    invoke-super {p0}, Lcom/yelp/android/serializable/Tip;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    invoke-super {p0}, Lcom/yelp/android/serializable/Tip;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    invoke-super {p0}, Lcom/yelp/android/serializable/Tip;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    invoke-super {p0}, Lcom/yelp/android/serializable/Tip;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic r()Lcom/yelp/android/serializable/Photo;
    .locals 1

    .prologue
    .line 302
    invoke-super {p0}, Lcom/yelp/android/serializable/Tip;->r()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic s()Ljava/util/List;
    .locals 1

    .prologue
    .line 302
    invoke-super {p0}, Lcom/yelp/android/serializable/Tip;->s()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic t()Ljava/util/Date;
    .locals 1

    .prologue
    .line 302
    invoke-super {p0}, Lcom/yelp/android/serializable/Tip;->t()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method
