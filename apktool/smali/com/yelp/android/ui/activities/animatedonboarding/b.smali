.class public Lcom/yelp/android/ui/activities/animatedonboarding/b;
.super Ljava/lang/Object;
.source "GifQueueJob.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/b;->a:I

    .line 16
    iput p2, p0, Lcom/yelp/android/ui/activities/animatedonboarding/b;->b:I

    .line 17
    iput p3, p0, Lcom/yelp/android/ui/activities/animatedonboarding/b;->e:I

    .line 18
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/b;->e:I

    return v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/animatedonboarding/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/b;->a:I

    iput v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/b;->c:I

    .line 39
    iget v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/b;->b:I

    iput v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/b;->d:I

    .line 44
    :goto_0
    return-void

    .line 41
    :cond_0
    iget v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/b;->a:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/b;->c:I

    .line 42
    iget v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/b;->b:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/b;->d:I

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 55
    check-cast p1, Lcom/yelp/android/ui/activities/animatedonboarding/b;

    .line 56
    iget v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/b;->a:I

    iget v1, p1, Lcom/yelp/android/ui/activities/animatedonboarding/b;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/b;->b:I

    iget v1, p1, Lcom/yelp/android/ui/activities/animatedonboarding/b;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/b;->a:I

    return v0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 60
    check-cast p1, Lcom/yelp/android/ui/activities/animatedonboarding/b;

    .line 61
    iget v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/b;->a:I

    iget v1, p1, Lcom/yelp/android/ui/activities/animatedonboarding/b;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/b;->b:I

    iget v1, p1, Lcom/yelp/android/ui/activities/animatedonboarding/b;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/b;->b:I

    return v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 33
    iget v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/b;->a:I

    iget v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/b;->b:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/b;->d:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startFrame: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "endFrame: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
