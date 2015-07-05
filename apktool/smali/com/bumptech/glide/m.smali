.class public final Lcom/bumptech/glide/m;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/j;

.field private final b:Lcom/yelp/android/v/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/v/m",
            "<TA;TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/j;Lcom/yelp/android/v/m;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/v/m",
            "<TA;TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 662
    iput-object p1, p0, Lcom/bumptech/glide/m;->a:Lcom/bumptech/glide/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 663
    iput-object p2, p0, Lcom/bumptech/glide/m;->b:Lcom/yelp/android/v/m;

    .line 664
    iput-object p3, p0, Lcom/bumptech/glide/m;->c:Ljava/lang/Class;

    .line 665
    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/m;)Lcom/yelp/android/v/m;
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/bumptech/glide/m;->b:Lcom/yelp/android/v/m;

    return-object v0
.end method

.method static synthetic b(Lcom/bumptech/glide/m;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/bumptech/glide/m;->c:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/bumptech/glide/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TA;>;)",
            "Lcom/bumptech/glide/m",
            "<TA;TT;>.com/bumptech/glide/n;"
        }
    .end annotation

    .prologue
    .line 674
    new-instance v0, Lcom/bumptech/glide/n;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/n;-><init>(Lcom/bumptech/glide/m;Ljava/lang/Class;)V

    return-object v0
.end method
