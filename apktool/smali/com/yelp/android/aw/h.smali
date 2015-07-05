.class public Lcom/yelp/android/aw/h;
.super Ljava/lang/Object;
.source "TalkMessageRequest.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/TalkMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/TalkMessage;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/yelp/android/aw/h;->a:Ljava/util/List;

    .line 79
    iput p2, p0, Lcom/yelp/android/aw/h;->b:I

    .line 80
    iput-object p3, p0, Lcom/yelp/android/aw/h;->c:Ljava/lang/String;

    .line 81
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/TalkMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/yelp/android/aw/h;->a:Ljava/util/List;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/yelp/android/aw/h;->b:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/yelp/android/aw/h;->c:Ljava/lang/String;

    return-object v0
.end method
