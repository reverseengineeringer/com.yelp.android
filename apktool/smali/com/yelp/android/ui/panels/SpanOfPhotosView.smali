.class public Lcom/yelp/android/ui/panels/SpanOfPhotosView;
.super Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;
.source "SpanOfPhotosView.java"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/yelp/android/ui/util/br;

.field private c:Lcom/yelp/android/ui/util/br;

.field private final d:I

.field private final e:I

.field private f:I

.field private final g:I

.field private h:Lcom/bumptech/glide/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/yelp/android/ui/panels/SpanOfPhotosView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".empty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/panels/SpanOfPhotosView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 47
    const v0, 0x7f0100bb

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/panels/SpanOfPhotosView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    sget-object v0, Lcom/yelp/android/b;->SpanOfPhotosView:[I

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->f:I

    .line 56
    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00bd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->g:I

    .line 58
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->e:I

    .line 59
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->d:I

    .line 60
    invoke-static {p1}, Lcom/bumptech/glide/h;->c(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->h:Lcom/bumptech/glide/j;

    .line 61
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    return-void
.end method

.method private a(Lcom/yelp/android/serializable/Media;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 98
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03015e

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 100
    const v0, 0x7f0c0080

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 101
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 103
    iget v3, p0, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->g:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 104
    iget v3, p0, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->g:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 105
    iget-object v1, p0, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->h:Lcom/bumptech/glide/j;

    invoke-interface {p1}, Lcom/yelp/android/serializable/Media;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/j;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v1

    const v3, 0x7f0202f2

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/d;->a(I)Lcom/bumptech/glide/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/yelp/android/ag/j;

    .line 108
    iget-object v0, p0, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->b:Lcom/yelp/android/ui/util/br;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    sget-object v0, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {p1, v0}, Lcom/yelp/android/serializable/Media;->isMediaType(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const v0, 0x7f0c045e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 112
    :cond_0
    return-object v2
.end method

.method private a(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .prologue
    const v1, 0x7f010048

    .line 86
    iget v0, p0, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->g:I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->setMinimumHeight(I)V

    .line 87
    iget v0, p0, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->g:I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->setMinimumWidth(I)V

    .line 88
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cp;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 90
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cp;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 92
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 93
    const/16 v0, 0x11

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 94
    return-object p1
.end method


# virtual methods
.method public a(Z)Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 117
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 118
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 119
    if-eqz p1, :cond_0

    .line 120
    iget v1, p0, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    iget-object v1, p0, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->c:Lcom/yelp/android/ui/util/br;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    :goto_0
    return-object v0

    .line 123
    :cond_0
    const v1, 0x7f0202f2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    iget-object v1, p0, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->b:Lcom/yelp/android/ui/util/br;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->removeAllViews()V

    .line 66
    return-void
.end method

.method public a(Landroid/app/PendingIntent;Lcom/yelp/android/ui/util/bc;)V
    .locals 2

    .prologue
    .line 175
    new-instance v0, Lcom/yelp/android/ui/util/br;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/yelp/android/ui/util/br;-><init>(Landroid/app/PendingIntent;ZLcom/yelp/android/ui/util/bc;)V

    iput-object v0, p0, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->b:Lcom/yelp/android/ui/util/br;

    .line 176
    new-instance v0, Lcom/yelp/android/ui/util/br;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, p2}, Lcom/yelp/android/ui/util/br;-><init>(Landroid/app/PendingIntent;ZLcom/yelp/android/ui/util/bc;)V

    iput-object v0, p0, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->c:Lcom/yelp/android/ui/util/br;

    .line 177
    return-void
.end method

.method public a(Ljava/util/List;ILandroid/view/View$OnClickListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/yelp/android/serializable/Media;",
            ">;I",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->a()V

    .line 137
    if-nez p3, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->f:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 139
    :goto_0
    if-lez v1, :cond_0

    .line 140
    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->setVisibility(I)V

    :cond_0
    move v2, v3

    .line 142
    :goto_1
    if-ge v2, v1, :cond_3

    .line 145
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_2

    if-eqz p3, :cond_2

    .line 146
    new-instance v0, Lcom/yelp/android/ui/widgets/i;

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/yelp/android/ui/widgets/i;-><init>(Landroid/content/Context;)V

    .line 147
    iget-object v4, v0, Lcom/yelp/android/ui/widgets/i;->b:Landroid/widget/TextView;

    const v5, 0x7f07009a

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 148
    iget-object v4, v0, Lcom/yelp/android/ui/widgets/i;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v4, p2}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageResource(I)V

    .line 149
    invoke-virtual {v0, p3}, Lcom/yelp/android/ui/widgets/i;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/widgets/i;->setTag(Ljava/lang/Object;)V

    .line 151
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->g:I

    iget v6, p0, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->g:I

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, v4}, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->a(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 137
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->f:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 153
    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->a(Lcom/yelp/android/serializable/Media;)Landroid/view/View;

    move-result-object v4

    .line 154
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 155
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->a(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 159
    :cond_3
    iget v0, p0, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->e:I

    if-ge v1, v0, :cond_4

    .line 160
    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->setVisibility(I)V

    .line 161
    iget v2, p0, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->e:I

    move v0, v1

    :goto_3
    if-ge v0, v2, :cond_5

    .line 162
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->a(Z)Landroid/widget/ImageView;

    move-result-object v1

    .line 163
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->g:I

    iget v5, p0, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->g:I

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, v3}, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->a(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 165
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p3, :cond_5

    .line 166
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->setVisibility(I)V

    .line 168
    :cond_5
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getMaxPhotoCount()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->f:I

    return v0
.end method

.method public setItemSelectedListener(Lcom/yelp/android/ui/util/w;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->b:Lcom/yelp/android/ui/util/br;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->b:Lcom/yelp/android/ui/util/br;

    iput-object p1, v0, Lcom/yelp/android/ui/util/br;->c:Lcom/yelp/android/ui/util/w;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->c:Lcom/yelp/android/ui/util/br;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->c:Lcom/yelp/android/ui/util/br;

    iput-object p1, v0, Lcom/yelp/android/ui/util/br;->c:Lcom/yelp/android/ui/util/w;

    .line 83
    :cond_1
    return-void
.end method

.method public setMaxPhotos(I)V
    .locals 0

    .prologue
    .line 73
    iput p1, p0, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->f:I

    .line 74
    return-void
.end method

.method public setMedia(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/yelp/android/serializable/Media;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/yelp/android/ui/panels/SpanOfPhotosView;->a(Ljava/util/List;ILandroid/view/View$OnClickListener;)V

    .line 172
    return-void
.end method
