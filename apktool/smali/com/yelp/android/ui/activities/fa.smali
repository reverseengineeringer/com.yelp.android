.class public Lcom/yelp/android/ui/activities/fa;
.super Landroid/widget/BaseAdapter;
.source "DinoGridImageAdapter.java"


# static fields
.field private static final a:[I


# instance fields
.field private final b:Lcom/bumptech/glide/j;

.field private final c:Lcom/yelp/android/ui/util/z;

.field private final d:Landroid/content/Context;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/yelp/android/ui/activities/fa;->a:[I

    return-void

    :array_0
    .array-data 4
        0x7f02004b
        0x7f02004c
        0x7f02004d
        0x7f02004e
        0x7f02004f
        0x7f020050
        0x7f020051
        0x7f020052
        0x7f020053
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/yelp/android/ui/activities/fa;->d:Landroid/content/Context;

    .line 44
    invoke-static {p1}, Lcom/bumptech/glide/h;->c(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/fa;->b:Lcom/bumptech/glide/j;

    .line 45
    new-instance v0, Lcom/yelp/android/ui/util/z;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/z;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/fa;->c:Lcom/yelp/android/ui/util/z;

    .line 46
    sget-object v0, Lcom/yelp/android/ui/activities/fa;->a:[I

    array-length v0, v0

    iput v0, p0, Lcom/yelp/android/ui/activities/fa;->e:I

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/fa;)Lcom/bumptech/glide/j;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/yelp/android/ui/activities/fa;->b:Lcom/bumptech/glide/j;

    return-object v0
.end method

.method static synthetic a()[I
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/yelp/android/ui/activities/fa;->a:[I

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/yelp/android/ui/activities/fa;->e:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 61
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 70
    check-cast p2, Landroid/widget/ImageView;

    .line 71
    if-nez p2, :cond_0

    .line 72
    new-instance p2, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/fa;->d:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 79
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/fa;->c:Lcom/yelp/android/ui/util/z;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/z;->a()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p3

    .line 81
    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getColumnWidth()I

    move-result v0

    .line 82
    iget-object v1, p0, Lcom/yelp/android/ui/activities/fa;->c:Lcom/yelp/android/ui/util/z;

    invoke-virtual {v1, v0, v0}, Lcom/yelp/android/ui/util/z;->a(II)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/fa;->c:Lcom/yelp/android/ui/util/z;

    new-instance v1, Lcom/yelp/android/ui/activities/fb;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/ui/activities/fb;-><init>(Lcom/yelp/android/ui/activities/fa;I)V

    invoke-virtual {v0, p2, v1}, Lcom/yelp/android/ui/util/z;->a(Landroid/view/View;Lcom/yelp/android/ui/util/cu;)V

    .line 99
    iget-object v0, p0, Lcom/yelp/android/ui/activities/fa;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v1, p0, Lcom/yelp/android/ui/activities/fa;->e:I

    move-object v0, p3

    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    if-eq v1, v0, :cond_1

    .line 102
    check-cast p3, Landroid/widget/GridView;

    invoke-virtual {p3}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/yelp/android/ui/activities/fa;->e:I

    .line 103
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/fa;->notifyDataSetChanged()V

    .line 105
    :cond_1
    return-object p2
.end method
