.class Lcom/facebook/FacebookRequestError$a;
.super Ljava/lang/Object;
.source "FacebookRequestError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/FacebookRequestError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p1, p0, Lcom/facebook/FacebookRequestError$a;->a:I

    .line 74
    iput p2, p0, Lcom/facebook/FacebookRequestError$a;->b:I

    .line 75
    return-void
.end method

.method synthetic constructor <init>(IILcom/facebook/FacebookRequestError$1;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/facebook/FacebookRequestError$a;-><init>(II)V

    return-void
.end method


# virtual methods
.method a(I)Z
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/facebook/FacebookRequestError$a;->a:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/facebook/FacebookRequestError$a;->b:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
