.class public Lcom/yelp/android/serializable/TalkTopic;
.super Lcom/yelp/android/serializable/_TalkTopic;
.source "TalkTopic.java"


# static fields
.field public static final CREATOR:Lcom/yelp/android/serializable/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/serializable/a",
            "<",
            "Lcom/yelp/android/serializable/TalkTopic;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/yelp/android/serializable/TalkTopic$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/TalkTopic$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/TalkTopic;->CREATOR:Lcom/yelp/android/serializable/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/yelp/android/serializable/_TalkTopic;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/TalkTopic;->p:Z

    return-void
.end method

.method public static a(Lcom/yelp/android/serializable/Event;)Lcom/yelp/android/serializable/TalkTopic;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/yelp/android/serializable/TalkTopic;

    invoke-direct {v0}, Lcom/yelp/android/serializable/TalkTopic;-><init>()V

    .line 58
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->C()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/TalkTopic;->f:Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->v()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/TalkTopic;->d:Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->B()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/TalkTopic;->e:Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->G()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/TalkTopic;->c:Ljava/lang/String;

    .line 62
    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_TalkTopic;->a(Landroid/os/Parcel;)V

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 22
    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/TalkTopic;->p:Z

    .line 23
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_TalkTopic;->a(Lorg/json/JSONObject;)V

    .line 28
    invoke-virtual {p0}, Lcom/yelp/android/serializable/TalkTopic;->c()[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/yelp/android/serializable/TalkTopic;->c()[I

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/User;->a([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/TalkTopic;->p:Z

    .line 33
    :goto_0
    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/TalkTopic;->p:Z

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/yelp/android/serializable/TalkTopic;->p:Z

    return v0
.end method

.method public b()I
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/yelp/android/serializable/TalkTopic;->f()I

    move-result v0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/TalkTopic;->e()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic c()[I
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_TalkTopic;->c()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()I
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_TalkTopic;->d()I

    move-result v0

    return v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_TalkTopic;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic e()I
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_TalkTopic;->e()I

    move-result v0

    return v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_TalkTopic;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic f()I
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_TalkTopic;->f()I

    move-result v0

    return v0
.end method

.method public bridge synthetic g()I
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_TalkTopic;->g()I

    move-result v0

    return v0
.end method

.method public bridge synthetic h()I
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_TalkTopic;->h()I

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_TalkTopic;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_TalkTopic;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_TalkTopic;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_TalkTopic;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_TalkTopic;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_TalkTopic;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_TalkTopic;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_TalkTopic;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic p()Ljava/util/Date;
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_TalkTopic;->p()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic q()Ljava/util/Date;
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_TalkTopic;->q()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/TalkTopic;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/TalkTopic;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/TalkTopic;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 14
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_TalkTopic;->writeToParcel(Landroid/os/Parcel;I)V

    .line 15
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/yelp/android/serializable/TalkTopic;->p:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 16
    return-void
.end method
