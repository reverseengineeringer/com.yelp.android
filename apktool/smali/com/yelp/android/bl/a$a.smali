.class Lcom/yelp/android/bl/a$a;
.super Ljava/lang/Object;
.source "CachedJobQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/bl/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/bl/a$a$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/Integer;

.field b:Lcom/yelp/android/bl/a$a$a;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/bl/a$1;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/yelp/android/bl/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/yelp/android/bl/a$a;->a:Ljava/lang/Integer;

    .line 124
    iput-object v0, p0, Lcom/yelp/android/bl/a$a;->b:Lcom/yelp/android/bl/a$a$a;

    .line 125
    return-void
.end method
