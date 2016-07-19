.class public final Lcom/yelp/android/dl/b;
.super Lrx/d;
.source "ImmediateScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/dl/b$a;
    }
.end annotation


# static fields
.field private static final b:Lcom/yelp/android/dl/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/yelp/android/dl/b;

    invoke-direct {v0}, Lcom/yelp/android/dl/b;-><init>()V

    sput-object v0, Lcom/yelp/android/dl/b;->b:Lcom/yelp/android/dl/b;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lrx/d;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public a()Lrx/d$a;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/yelp/android/dl/b$a;

    invoke-direct {v0, p0}, Lcom/yelp/android/dl/b$a;-><init>(Lcom/yelp/android/dl/b;)V

    return-object v0
.end method
