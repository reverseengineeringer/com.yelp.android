.class Lcom/bugsnag/android/Breadcrumbs;
.super Ljava/lang/Object;
.source "Breadcrumbs.java"

# interfaces
.implements Lcom/bugsnag/android/JsonStream$Streamable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bugsnag/android/Breadcrumbs$Breadcrumb;
    }
.end annotation


# instance fields
.field private maxSize:I

.field private final store:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bugsnag/android/Breadcrumbs$Breadcrumb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/bugsnag/android/Breadcrumbs;->store:Ljava/util/List;

    .line 24
    const/16 v0, 0x14

    iput v0, p0, Lcom/bugsnag/android/Breadcrumbs;->maxSize:I

    return-void
.end method


# virtual methods
.method add(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/bugsnag/android/Breadcrumbs;->store:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/bugsnag/android/Breadcrumbs;->maxSize:I

    if-lt v0, v1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/bugsnag/android/Breadcrumbs;->store:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/bugsnag/android/Breadcrumbs;->store:Ljava/util/List;

    new-instance v1, Lcom/bugsnag/android/Breadcrumbs$Breadcrumb;

    invoke-direct {v1, p1}, Lcom/bugsnag/android/Breadcrumbs$Breadcrumb;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method clear()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/bugsnag/android/Breadcrumbs;->store:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 49
    return-void
.end method

.method setSize(I)V
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/bugsnag/android/Breadcrumbs;->store:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 53
    iput p1, p0, Lcom/bugsnag/android/Breadcrumbs;->maxSize:I

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/bugsnag/android/Breadcrumbs;->store:Ljava/util/List;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bugsnag/android/Breadcrumbs;->store:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public toStream(Lcom/bugsnag/android/JsonStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->beginArray()Lcom/bugsnag/android/JsonWriter;

    .line 29
    iget-object v0, p0, Lcom/bugsnag/android/Breadcrumbs;->store:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bugsnag/android/Breadcrumbs$Breadcrumb;

    .line 30
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->beginArray()Lcom/bugsnag/android/JsonWriter;

    .line 31
    iget-object v2, v0, Lcom/bugsnag/android/Breadcrumbs$Breadcrumb;->timestamp:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    .line 32
    iget-object v0, v0, Lcom/bugsnag/android/Breadcrumbs$Breadcrumb;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    .line 33
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->endArray()Lcom/bugsnag/android/JsonWriter;

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->endArray()Lcom/bugsnag/android/JsonWriter;

    .line 37
    return-void
.end method
