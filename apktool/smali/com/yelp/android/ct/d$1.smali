.class Lcom/yelp/android/ct/d$1;
.super Ljava/lang/Object;
.source "EventsFilesManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ct/d;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/yelp/android/ct/d$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ct/d;


# direct methods
.method constructor <init>(Lcom/yelp/android/ct/d;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/yelp/android/ct/d$1;->a:Lcom/yelp/android/ct/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ct/d$a;Lcom/yelp/android/ct/d$a;)I
    .locals 4

    .prologue
    .line 205
    iget-wide v0, p1, Lcom/yelp/android/ct/d$a;->b:J

    iget-wide v2, p2, Lcom/yelp/android/ct/d$a;->b:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 202
    check-cast p1, Lcom/yelp/android/ct/d$a;

    check-cast p2, Lcom/yelp/android/ct/d$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ct/d$1;->a(Lcom/yelp/android/ct/d$a;Lcom/yelp/android/ct/d$a;)I

    move-result v0

    return v0
.end method
