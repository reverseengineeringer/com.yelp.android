.class public Lcom/yelp/android/y/d;
.super Ljava/lang/Object;
.source "UnitTransformation.java"

# interfaces
.implements Lcom/bumptech/glide/load/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/f",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/load/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/f",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/yelp/android/y/d;

    invoke-direct {v0}, Lcom/yelp/android/y/d;-><init>()V

    sput-object v0, Lcom/yelp/android/y/d;->a:Lcom/bumptech/glide/load/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/yelp/android/y/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/yelp/android/y/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 21
    sget-object v0, Lcom/yelp/android/y/d;->a:Lcom/bumptech/glide/load/f;

    check-cast v0, Lcom/yelp/android/y/d;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/t;II)Lcom/bumptech/glide/load/engine/t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/t",
            "<TT;>;II)",
            "Lcom/bumptech/glide/load/engine/t",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 26
    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, ""

    return-object v0
.end method
