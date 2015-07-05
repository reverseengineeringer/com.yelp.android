.class public Lcom/yelp/android/x/b;
.super Ljava/lang/Object;
.source "HttpUrlGlideUrlLoader.java"

# interfaces
.implements Lcom/yelp/android/v/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/v/n",
        "<",
        "Lcom/yelp/android/v/e;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/v/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/v/j",
            "<",
            "Lcom/yelp/android/v/e;",
            "Lcom/yelp/android/v/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/yelp/android/v/j;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lcom/yelp/android/v/j;-><init>(I)V

    iput-object v0, p0, Lcom/yelp/android/x/b;->a:Lcom/yelp/android/v/j;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/yelp/android/v/c;)Lcom/yelp/android/v/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/v/c;",
            ")",
            "Lcom/yelp/android/v/m",
            "<",
            "Lcom/yelp/android/v/e;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lcom/yelp/android/x/a;

    iget-object v1, p0, Lcom/yelp/android/x/b;->a:Lcom/yelp/android/v/j;

    invoke-direct {v0, v1}, Lcom/yelp/android/x/a;-><init>(Lcom/yelp/android/v/j;)V

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method
