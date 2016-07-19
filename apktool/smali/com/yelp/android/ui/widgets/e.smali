.class public Lcom/yelp/android/ui/widgets/e;
.super Ljava/lang/Object;
.source "ParallaxListView.java"


# instance fields
.field private a:Landroid/graphics/Rect;

.field private b:I

.field private c:Landroid/view/View;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ListView;

.field private final f:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;I)V
    .locals 4

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/yelp/android/ui/widgets/e$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/widgets/e$1;-><init>(Lcom/yelp/android/ui/widgets/e;)V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/e;->f:Landroid/widget/AbsListView$OnScrollListener;

    .line 30
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/e;->e:Landroid/widget/ListView;

    .line 31
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/e;->a:Landroid/graphics/Rect;

    .line 33
    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300e8

    iget-object v2, p0, Lcom/yelp/android/ui/widgets/e;->e:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/e;->c:Landroid/view/View;

    .line 36
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/e;->c:Landroid/view/View;

    const v1, 0x7f0f035b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 37
    invoke-virtual {v0, p2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 38
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 40
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/e;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/e;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 41
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/e;->c:Landroid/view/View;

    const v1, 0x7f0f0113

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/e;->d:Landroid/widget/ImageView;

    .line 42
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/e;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/e;->f:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/widgets/e;I)I
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/yelp/android/ui/widgets/e;->b:I

    return p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/widgets/e;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/e;->a:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/widgets/e;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/e;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/widgets/e;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/yelp/android/ui/widgets/e;->b:I

    return v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/e;->c:Landroid/view/View;

    return-object v0
.end method
