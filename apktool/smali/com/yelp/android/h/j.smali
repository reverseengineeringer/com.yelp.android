.class public Lcom/yelp/android/h/j;
.super Ljava/lang/Object;
.source "AccessibilityNodeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/h/j$c;,
        Lcom/yelp/android/h/j$b;,
        Lcom/yelp/android/h/j$d;,
        Lcom/yelp/android/h/j$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/yelp/android/h/j$a;


# instance fields
.field private final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 139
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 140
    new-instance v0, Lcom/yelp/android/h/j$c;

    invoke-direct {v0}, Lcom/yelp/android/h/j$c;-><init>()V

    sput-object v0, Lcom/yelp/android/h/j;->a:Lcom/yelp/android/h/j$a;

    .line 146
    :goto_0
    return-void

    .line 141
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 142
    new-instance v0, Lcom/yelp/android/h/j$b;

    invoke-direct {v0}, Lcom/yelp/android/h/j$b;-><init>()V

    sput-object v0, Lcom/yelp/android/h/j;->a:Lcom/yelp/android/h/j$a;

    goto :goto_0

    .line 144
    :cond_1
    new-instance v0, Lcom/yelp/android/h/j$d;

    invoke-direct {v0}, Lcom/yelp/android/h/j$d;-><init>()V

    sput-object v0, Lcom/yelp/android/h/j;->a:Lcom/yelp/android/h/j$a;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    sget-object v0, Lcom/yelp/android/h/j;->a:Lcom/yelp/android/h/j$a;

    invoke-interface {v0, p0}, Lcom/yelp/android/h/j$a;->a(Lcom/yelp/android/h/j;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/h/j;->b:Ljava/lang/Object;

    .line 153
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lcom/yelp/android/h/j;->b:Ljava/lang/Object;

    .line 163
    return-void
.end method


# virtual methods
.method public a(I)Lcom/yelp/android/h/c;
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/yelp/android/h/j;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/h/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(IILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public b(I)Lcom/yelp/android/h/c;
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    return-object v0
.end method
