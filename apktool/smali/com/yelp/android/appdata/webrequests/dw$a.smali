.class public Lcom/yelp/android/appdata/webrequests/dw$a;
.super Ljava/lang/Object;
.source "ReviewHighlightListRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/dw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/ReviewHighlight;",
            ">;"
        }
    .end annotation
.end field

.field b:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/ReviewHighlight;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/dw$a;->a:Ljava/util/ArrayList;

    .line 60
    iput p2, p0, Lcom/yelp/android/appdata/webrequests/dw$a;->b:I

    .line 61
    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/ReviewHighlight;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dw$a;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/dw$a;->b:I

    return v0
.end method
