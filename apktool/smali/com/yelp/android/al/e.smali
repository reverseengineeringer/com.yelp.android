.class public Lcom/yelp/android/al/e;
.super Ljava/lang/Object;
.source "NoAnimation.java"

# interfaces
.implements Lcom/yelp/android/al/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/al/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yelp/android/al/c",
        "<TR;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/yelp/android/al/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/al/e",
            "<*>;"
        }
    .end annotation
.end field

.field private static final b:Lcom/yelp/android/al/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/al/d",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/yelp/android/al/e;

    invoke-direct {v0}, Lcom/yelp/android/al/e;-><init>()V

    sput-object v0, Lcom/yelp/android/al/e;->a:Lcom/yelp/android/al/e;

    .line 11
    new-instance v0, Lcom/yelp/android/al/e$a;

    invoke-direct {v0}, Lcom/yelp/android/al/e$a;-><init>()V

    sput-object v0, Lcom/yelp/android/al/e;->b:Lcom/yelp/android/al/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static a()Lcom/yelp/android/al/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/yelp/android/al/d",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 29
    sget-object v0, Lcom/yelp/android/al/e;->b:Lcom/yelp/android/al/d;

    return-object v0
.end method

.method public static b()Lcom/yelp/android/al/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/yelp/android/al/c",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 37
    sget-object v0, Lcom/yelp/android/al/e;->a:Lcom/yelp/android/al/e;

    return-object v0
.end method

.method static synthetic c()Lcom/yelp/android/al/e;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/yelp/android/al/e;->a:Lcom/yelp/android/al/e;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/yelp/android/al/c$a;)Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method
