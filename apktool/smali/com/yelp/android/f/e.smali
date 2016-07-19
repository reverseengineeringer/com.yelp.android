.class public Lcom/yelp/android/f/e;
.super Ljava/lang/Object;
.source "TextDirectionHeuristicsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/f/e$1;,
        Lcom/yelp/android/f/e$f;,
        Lcom/yelp/android/f/e$a;,
        Lcom/yelp/android/f/e$b;,
        Lcom/yelp/android/f/e$c;,
        Lcom/yelp/android/f/e$e;,
        Lcom/yelp/android/f/e$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/yelp/android/f/d;

.field public static final b:Lcom/yelp/android/f/d;

.field public static final c:Lcom/yelp/android/f/d;

.field public static final d:Lcom/yelp/android/f/d;

.field public static final e:Lcom/yelp/android/f/d;

.field public static final f:Lcom/yelp/android/f/d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/yelp/android/f/e$e;

    invoke-direct {v0, v2, v3, v2}, Lcom/yelp/android/f/e$e;-><init>(Lcom/yelp/android/f/e$c;ZLcom/yelp/android/f/e$1;)V

    sput-object v0, Lcom/yelp/android/f/e;->a:Lcom/yelp/android/f/d;

    .line 39
    new-instance v0, Lcom/yelp/android/f/e$e;

    invoke-direct {v0, v2, v4, v2}, Lcom/yelp/android/f/e$e;-><init>(Lcom/yelp/android/f/e$c;ZLcom/yelp/android/f/e$1;)V

    sput-object v0, Lcom/yelp/android/f/e;->b:Lcom/yelp/android/f/d;

    .line 47
    new-instance v0, Lcom/yelp/android/f/e$e;

    sget-object v1, Lcom/yelp/android/f/e$b;->a:Lcom/yelp/android/f/e$b;

    invoke-direct {v0, v1, v3, v2}, Lcom/yelp/android/f/e$e;-><init>(Lcom/yelp/android/f/e$c;ZLcom/yelp/android/f/e$1;)V

    sput-object v0, Lcom/yelp/android/f/e;->c:Lcom/yelp/android/f/d;

    .line 55
    new-instance v0, Lcom/yelp/android/f/e$e;

    sget-object v1, Lcom/yelp/android/f/e$b;->a:Lcom/yelp/android/f/e$b;

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/f/e$e;-><init>(Lcom/yelp/android/f/e$c;ZLcom/yelp/android/f/e$1;)V

    sput-object v0, Lcom/yelp/android/f/e;->d:Lcom/yelp/android/f/d;

    .line 62
    new-instance v0, Lcom/yelp/android/f/e$e;

    sget-object v1, Lcom/yelp/android/f/e$a;->a:Lcom/yelp/android/f/e$a;

    invoke-direct {v0, v1, v3, v2}, Lcom/yelp/android/f/e$e;-><init>(Lcom/yelp/android/f/e$c;ZLcom/yelp/android/f/e$1;)V

    sput-object v0, Lcom/yelp/android/f/e;->e:Lcom/yelp/android/f/d;

    .line 68
    sget-object v0, Lcom/yelp/android/f/e$f;->a:Lcom/yelp/android/f/e$f;

    sput-object v0, Lcom/yelp/android/f/e;->f:Lcom/yelp/android/f/d;

    return-void
.end method

.method static synthetic a(I)I
    .locals 1

    .prologue
    .line 28
    invoke-static {p0}, Lcom/yelp/android/f/e;->d(I)I

    move-result v0

    return v0
.end method

.method static synthetic b(I)I
    .locals 1

    .prologue
    .line 28
    invoke-static {p0}, Lcom/yelp/android/f/e;->c(I)I

    move-result v0

    return v0
.end method

.method private static c(I)I
    .locals 1

    .prologue
    .line 79
    packed-switch p0, :pswitch_data_0

    .line 86
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 81
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 84
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static d(I)I
    .locals 1

    .prologue
    .line 91
    sparse-switch p0, :sswitch_data_0

    .line 102
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 95
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 100
    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 91
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_1
        0x11 -> :sswitch_1
    .end sparse-switch
.end method
