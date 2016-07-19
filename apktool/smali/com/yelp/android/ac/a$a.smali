.class public Lcom/yelp/android/ac/a$a;
.super Ljava/lang/Object;
.source "HttpUrlGlideUrlLoader.java"

# interfaces
.implements Lcom/yelp/android/aa/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ac/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/aa/m",
        "<",
        "Lcom/yelp/android/aa/d;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/aa/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/aa/k",
            "<",
            "Lcom/yelp/android/aa/d;",
            "Lcom/yelp/android/aa/d;",
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
    new-instance v0, Lcom/yelp/android/aa/k;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lcom/yelp/android/aa/k;-><init>(I)V

    iput-object v0, p0, Lcom/yelp/android/ac/a$a;->a:Lcom/yelp/android/aa/k;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/yelp/android/aa/c;)Lcom/yelp/android/aa/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/aa/c;",
            ")",
            "Lcom/yelp/android/aa/l",
            "<",
            "Lcom/yelp/android/aa/d;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lcom/yelp/android/ac/a;

    iget-object v1, p0, Lcom/yelp/android/ac/a$a;->a:Lcom/yelp/android/aa/k;

    invoke-direct {v0, v1}, Lcom/yelp/android/ac/a;-><init>(Lcom/yelp/android/aa/k;)V

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method
