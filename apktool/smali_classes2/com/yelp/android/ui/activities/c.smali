.class public Lcom/yelp/android/ui/activities/c;
.super Landroid/widget/BaseAdapter;
.source "DinoGridImageAdapter.java"


# static fields
.field private static final a:[I


# instance fields
.field private final b:Lcom/yelp/android/ui/util/t;

.field private final c:Lcom/yelp/android/ui/util/q;

.field private final d:Landroid/content/Context;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/yelp/android/ui/activities/c;->a:[I

    return-void

    :array_0
    .array-data 4
        0x7f020056
        0x7f020057
        0x7f020058
        0x7f020059
        0x7f02005a
        0x7f02005b
        0x7f02005c
        0x7f02005d
        0x7f02005e
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/yelp/android/ui/activities/c;->d:Landroid/content/Context;

    .line 41
    invoke-static {p1}, Lcom/yelp/android/ui/util/t;->a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/c;->b:Lcom/yelp/android/ui/util/t;

    .line 42
    new-instance v0, Lcom/yelp/android/ui/util/q;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/q;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/c;->c:Lcom/yelp/android/ui/util/q;

    .line 43
    sget-object v0, Lcom/yelp/android/ui/activities/c;->a:[I

    array-length v0, v0

    iput v0, p0, Lcom/yelp/android/ui/activities/c;->e:I

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/c;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/yelp/android/ui/activities/c;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a()[I
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/yelp/android/ui/activities/c;->a:[I

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/c;)Lcom/yelp/android/ui/util/t;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/yelp/android/ui/activities/c;->b:Lcom/yelp/android/ui/util/t;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/yelp/android/ui/activities/c;->e:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 58
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 63
    check-cast p2, Landroid/widget/ImageView;

    .line 64
    if-nez p2, :cond_0

    .line 65
    new-instance p2, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/c;->d:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object v0, p3

    .line 72
    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getColumnWidth()I

    move-result v0

    .line 73
    iget-object v1, p0, Lcom/yelp/android/ui/activities/c;->c:Lcom/yelp/android/ui/util/q;

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/q;->a()Z

    move-result v1

    if-nez v1, :cond_0

    if-lez v0, :cond_0

    .line 74
    iget-object v1, p0, Lcom/yelp/android/ui/activities/c;->c:Lcom/yelp/android/ui/util/q;

    invoke-virtual {v1, v0, v0}, Lcom/yelp/android/ui/util/q;->a(II)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/c;->c:Lcom/yelp/android/ui/util/q;

    new-instance v1, Lcom/yelp/android/ui/activities/c$1;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/ui/activities/c$1;-><init>(Lcom/yelp/android/ui/activities/c;I)V

    invoke-virtual {v0, p2, v1}, Lcom/yelp/android/ui/util/q;->a(Landroid/view/View;Lcom/yelp/android/ui/util/at$a;)V

    .line 96
    iget-object v0, p0, Lcom/yelp/android/ui/activities/c;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v1, p0, Lcom/yelp/android/ui/activities/c;->e:I

    move-object v0, p3

    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    if-eq v1, v0, :cond_1

    .line 99
    check-cast p3, Landroid/widget/GridView;

    invoke-virtual {p3}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/yelp/android/ui/activities/c;->e:I

    .line 100
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/c;->notifyDataSetChanged()V

    .line 102
    :cond_1
    return-object p2
.end method
