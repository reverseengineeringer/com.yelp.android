.class public Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;
.super Landroid/widget/FrameLayout;
.source "PhotoChrome.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/photoviewer/am;


# instance fields
.field private A:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private B:Lcom/yelp/android/ui/activities/photoviewer/ad;

.field private C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private D:Lcom/yelp/android/ui/activities/photoviewer/ae;

.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lcom/yelp/android/serializable/Media;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/CompoundButton;

.field private r:Landroid/view/View;

.field private s:Lcom/yelp/android/ui/util/cn;

.field private t:Landroid/support/v7/widget/ListPopupWindow;

.field private u:Landroid/view/animation/Animation;

.field private v:Landroid/view/animation/Animation;

.field private w:Landroid/view/animation/Animation;

.field private x:Landroid/view/animation/Animation;

.field private y:Landroid/view/animation/Animation;

.field private z:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->C:Ljava/util/List;

    .line 118
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a(Landroid/content/Context;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->C:Ljava/util/List;

    .line 123
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a(Landroid/content/Context;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->C:Ljava/util/List;

    .line 128
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a(Landroid/content/Context;)V

    .line 129
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Landroid/support/v7/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->t:Landroid/support/v7/widget/ListPopupWindow;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 138
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03015b

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 140
    const v0, 0x7f0c0458

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->n:Landroid/widget/TextView;

    .line 141
    const v0, 0x7f0c0455

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->j:Landroid/view/View;

    .line 142
    const v0, 0x7f0c0457

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->k:Landroid/view/View;

    .line 143
    const v0, 0x7f0c0339

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->q:Landroid/widget/CompoundButton;

    .line 144
    const v0, 0x7f0c033a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->o:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f0c045a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->p:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f0c00ba

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->l:Landroid/view/View;

    .line 147
    const v0, 0x7f0c02e4

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->r:Landroid/view/View;

    .line 148
    const v0, 0x7f0c0456

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->m:Landroid/view/View;

    .line 149
    iput-boolean v3, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->g:Z

    .line 151
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->b(Landroid/content/Context;)V

    .line 153
    new-instance v0, Lcom/yelp/android/ui/util/cn;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->r:Landroid/view/View;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/util/cn;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->s:Lcom/yelp/android/ui/util/cn;

    .line 154
    iput-boolean v3, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->h:Z

    .line 155
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Lcom/yelp/android/ui/activities/photoviewer/ad;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->B:Lcom/yelp/android/ui/activities/photoviewer/ad;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 161
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f0f0173

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 163
    new-instance v1, Lcom/yelp/android/ui/activities/photoviewer/ae;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->C:Ljava/util/List;

    invoke-direct {v1, v2, v0}, Lcom/yelp/android/ui/activities/photoviewer/ae;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->D:Lcom/yelp/android/ui/activities/photoviewer/ae;

    .line 165
    new-instance v1, Landroid/support/v7/widget/ListPopupWindow;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->t:Landroid/support/v7/widget/ListPopupWindow;

    .line 166
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->t:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;->d(I)V

    .line 168
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->t:Landroid/support/v7/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;->a(Landroid/view/View;)V

    .line 169
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->t:Landroid/support/v7/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->D:Lcom/yelp/android/ui/activities/photoviewer/ae;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;->a(Landroid/widget/ListAdapter;)V

    .line 172
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->t:Landroid/support/v7/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;->a(Z)V

    .line 173
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->t:Landroid/support/v7/widget/ListPopupWindow;

    new-instance v1, Lcom/yelp/android/ui/activities/photoviewer/v;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/photoviewer/v;-><init>(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 203
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->m:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ui/activities/photoviewer/w;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/photoviewer/w;-><init>(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Lcom/yelp/android/serializable/Media;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->i:Lcom/yelp/android/serializable/Media;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Landroid/view/View;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Landroid/view/View;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->k:Landroid/view/View;

    return-object v0
.end method

.method private e()Z
    .locals 2

    .prologue
    .line 132
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->i:Lcom/yelp/android/serializable/Media;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->i:Lcom/yelp/android/serializable/Media;

    invoke-interface {v1}, Lcom/yelp/android/serializable/Media;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->y:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 220
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->i:Lcom/yelp/android/serializable/Media;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->i:Lcom/yelp/android/serializable/Media;

    sget-object v1, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v0, v1}, Lcom/yelp/android/serializable/Media;->isMediaType(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->i:Lcom/yelp/android/serializable/Media;

    check-cast v0, Lcom/yelp/android/serializable/Video;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Video;->uploadedByBusinessOwner()Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->i:Lcom/yelp/android/serializable/Media;

    sget-object v2, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v0, v2}, Lcom/yelp/android/serializable/Media;->isMediaType(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0704f7

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->C:Ljava/util/List;

    new-instance v2, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem;

    sget-object v3, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;->FLAG:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;

    invoke-direct {v2, v0, v3}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem;-><init>(Ljava/lang/String;Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_1
    return-void

    .line 222
    :cond_2
    const v0, 0x7f0704f5

    goto :goto_0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Landroid/widget/CompoundButton;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->q:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->o:Landroid/widget/TextView;

    new-instance v1, Lcom/yelp/android/ui/activities/photoviewer/y;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/photoviewer/y;-><init>(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    return-void
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->z:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private h()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 333
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/z;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/photoviewer/z;-><init>(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->A:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 352
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->q:Landroid/widget/CompoundButton;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->A:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 355
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->y:Landroid/view/animation/Animation;

    .line 356
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->y:Landroid/view/animation/Animation;

    sget v1, Lcom/yelp/android/ui/util/cw;->f:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 357
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->y:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 359
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->z:Landroid/view/animation/Animation;

    .line 360
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->z:Landroid/view/animation/Animation;

    sget v1, Lcom/yelp/android/ui/util/cw;->f:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 361
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->z:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 363
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->q:Landroid/widget/CompoundButton;

    new-instance v1, Lcom/yelp/android/ui/activities/photoviewer/aa;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/photoviewer/aa;-><init>(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 382
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->q:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setClickable(Z)V

    .line 383
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->q:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 384
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->q:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setFocusable(Z)V

    .line 385
    return-void
.end method

.method private i()V
    .locals 8

    .prologue
    const/4 v1, 0x4

    const/4 v7, 0x0

    const/16 v2, 0x8

    .line 388
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a:Z

    if-nez v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 391
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->q:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->q:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 419
    :goto_0
    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->i:Lcom/yelp/android/serializable/Media;

    if-nez v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->q:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->q:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v7}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->i:Lcom/yelp/android/serializable/Media;

    invoke-interface {v0}, Lcom/yelp/android/serializable/Media;->getFeedback()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    .line 406
    if-nez v0, :cond_2

    .line 407
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 409
    :cond_2
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->getPositiveFeedbackCount()I

    move-result v1

    .line 410
    if-lez v1, :cond_3

    .line 411
    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->o:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e003b

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    :goto_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->q:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->isLikedByUser()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 414
    :cond_3
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 235
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 236
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->D:Lcom/yelp/android/ui/activities/photoviewer/ae;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/ae;->clear()V

    .line 237
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 238
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c:Z

    if-eqz v0, :cond_4

    .line 239
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->i:Lcom/yelp/android/serializable/Media;

    sget-object v2, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v0, v2}, Lcom/yelp/android/serializable/Media;->isMediaType(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0701fa

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 241
    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->C:Ljava/util/List;

    new-instance v3, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem;

    sget-object v4, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;->DELETE:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;

    invoke-direct {v3, v0, v4}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem;-><init>(Ljava/lang/String;Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->i:Lcom/yelp/android/serializable/Media;

    sget-object v2, Lcom/yelp/android/serializable/Media$MediaType;->PHOTO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v0, v2}, Lcom/yelp/android/serializable/Media;->isMediaType(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->d:Z

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->C:Ljava/util/List;

    new-instance v2, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem;

    const v3, 0x7f070225

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;->EDIT:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;

    invoke-direct {v2, v3, v4}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem;-><init>(Ljava/lang/String;Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_1
    :goto_2
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->i:Lcom/yelp/android/serializable/Media;

    invoke-interface {v0}, Lcom/yelp/android/serializable/Media;->getBusinessId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->C:Ljava/util/List;

    new-instance v2, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem;

    const v3, 0x7f0701d0

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;->VIEW:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;

    invoke-direct {v2, v1, v3}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem;-><init>(Ljava/lang/String;Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->D:Lcom/yelp/android/ui/activities/photoviewer/ae;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->C:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/ae;->a(Ljava/util/List;)V

    .line 267
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->D:Lcom/yelp/android/ui/activities/photoviewer/ae;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/ae;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 268
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->m:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 272
    :goto_3
    return-void

    .line 239
    :cond_3
    const v0, 0x7f0701f9

    goto :goto_0

    .line 242
    :cond_4
    instance-of v0, v1, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->C:Ljava/util/List;

    new-instance v2, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem;

    const v3, 0x7f070084

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;->ADD_PHOTO:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;

    invoke-direct {v2, v3, v4}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem;-><init>(Ljava/lang/String;Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 252
    :cond_5
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->f()V

    .line 253
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->i:Lcom/yelp/android/serializable/Media;

    sget-object v2, Lcom/yelp/android/serializable/Media$MediaType;->PHOTO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v0, v2}, Lcom/yelp/android/serializable/Media;->isMediaType(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->i:Lcom/yelp/android/serializable/Media;

    invoke-interface {v0}, Lcom/yelp/android/serializable/Media;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->i:Lcom/yelp/android/serializable/Media;

    invoke-interface {v0}, Lcom/yelp/android/serializable/Media;->getUserPassport()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    sget-object v2, Lcom/yelp/android/serializable/FeatureSet$Feature;->SEND_COMPLIMENT:Lcom/yelp/android/serializable/FeatureSet$Feature;

    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/Passport;->isFeatureDisabled(Lcom/yelp/android/serializable/FeatureSet$Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->C:Ljava/util/List;

    new-instance v2, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem;

    const v3, 0x7f070550

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;->COMPLIMENT:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;

    invoke-direct {v2, v3, v4}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem;-><init>(Ljava/lang/String;Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 270
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->m:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method public a(Lcom/yelp/android/serializable/Media;)V
    .locals 11

    .prologue
    const/16 v0, 0x8

    const/4 v9, 0x0

    const/4 v4, 0x4

    .line 504
    if-nez p1, :cond_0

    .line 507
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 508
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 510
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->r:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->q:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 512
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 513
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->m:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 555
    :goto_0
    return-void

    .line 517
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->i:Lcom/yelp/android/serializable/Media;

    .line 519
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a()V

    .line 521
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->i()V

    .line 523
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 524
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->n:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->i:Lcom/yelp/android/serializable/Media;

    invoke-interface {v2}, Lcom/yelp/android/serializable/Media;->getCaption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->i:Lcom/yelp/android/serializable/Media;

    invoke-interface {v1}, Lcom/yelp/android/serializable/Media;->getTimeCreated()Ljava/util/Date;

    move-result-object v1

    .line 527
    if-eqz v1, :cond_3

    .line 528
    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->p:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->g:Z

    if-eqz v3, :cond_1

    move v0, v9

    :cond_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 529
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->p:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/util/StringUtils$Format;->LONG:Lcom/yelp/android/util/StringUtils$Format;

    invoke-static {v2, v3, v1}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->i:Lcom/yelp/android/serializable/Media;

    invoke-interface {v0}, Lcom/yelp/android/serializable/Media;->getUserPassport()Lcom/yelp/android/serializable/Passport;

    move-result-object v10

    .line 535
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lcom/yelp/android/serializable/Passport;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 537
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->r:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 531
    :cond_3
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 540
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->r:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->s:Lcom/yelp/android/ui/util/cn;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v10}, Lcom/yelp/android/serializable/Passport;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lcom/yelp/android/serializable/Passport;->getFriendCount()I

    move-result v3

    invoke-virtual {v10}, Lcom/yelp/android/serializable/Passport;->getReviewCount()I

    move-result v4

    invoke-virtual {v10}, Lcom/yelp/android/serializable/Passport;->getPhotoCount()I

    move-result v5

    invoke-virtual {v10}, Lcom/yelp/android/serializable/Passport;->getVideoCount()I

    move-result v6

    invoke-virtual {v10}, Lcom/yelp/android/serializable/Passport;->getMediaCount()I

    move-result v7

    invoke-virtual {v10}, Lcom/yelp/android/serializable/Passport;->getProfileThumbnail()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v9}, Lcom/yelp/android/ui/util/cn;->a(Landroid/content/Context;Ljava/lang/CharSequence;IIIIILjava/lang/String;Z)V

    .line 546
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->r:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ui/activities/photoviewer/ab;

    invoke-direct {v1, p0, v10}, Lcom/yelp/android/ui/activities/photoviewer/ab;-><init>(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;Lcom/yelp/android/serializable/Passport;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 500
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->g:Z

    .line 501
    return-void
.end method

.method public a(ZZZZZZLcom/yelp/android/ui/activities/photoviewer/ad;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 280
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->b:Z

    .line 281
    iput-boolean p2, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a:Z

    .line 282
    iput-boolean p3, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c:Z

    .line 283
    iput-boolean p4, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->d:Z

    .line 284
    iput-boolean p5, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->e:Z

    .line 285
    iput-boolean p6, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->f:Z

    .line 286
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->f:Z

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 289
    :cond_0
    iput-object p7, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->B:Lcom/yelp/android/ui/activities/photoviewer/ad;

    .line 291
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->b:Z

    if-nez v0, :cond_1

    .line 292
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->setVisibility(I)V

    .line 293
    iput-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->B:Lcom/yelp/android/ui/activities/photoviewer/ad;

    .line 319
    :goto_0
    return-void

    .line 298
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 299
    const v1, 0x7f04001d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->v:Landroid/view/animation/Animation;

    .line 300
    const v1, 0x7f040023

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->u:Landroid/view/animation/Animation;

    .line 301
    const v1, 0x7f04001a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->x:Landroid/view/animation/Animation;

    .line 302
    const v1, 0x7f04001f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->w:Landroid/view/animation/Animation;

    .line 305
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->u:Landroid/view/animation/Animation;

    new-instance v1, Lcom/yelp/android/ui/activities/photoviewer/x;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/photoviewer/x;-><init>(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 313
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a:Z

    if-eqz v0, :cond_2

    .line 314
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->g()V

    .line 315
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->h()V

    .line 318
    :cond_2
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a(Lcom/yelp/android/serializable/Media;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 463
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->b:Z

    if-nez v0, :cond_0

    .line 474
    :goto_0
    return-void

    .line 469
    :cond_0
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->h:Z

    if-eqz v0, :cond_1

    .line 470
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c()V

    goto :goto_0

    .line 472
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->d()V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 477
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->h:Z

    if-nez v0, :cond_0

    .line 484
    :goto_0
    return-void

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->j:Landroid/view/View;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->u:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 481
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->w:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 482
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->t:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->a()V

    .line 483
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->h:Z

    goto :goto_0
.end method

.method public d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 487
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->h:Z

    if-eqz v0, :cond_0

    .line 497
    :goto_0
    return-void

    .line 490
    :cond_0
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->f:Z

    if-nez v0, :cond_1

    .line 491
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 492
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->j:Landroid/view/View;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->v:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 494
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->x:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 496
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->h:Z

    goto :goto_0
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->h:Z

    return v0
.end method

.method public setLikeButtonChecked(Z)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 422
    .line 425
    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->i:Lcom/yelp/android/serializable/Media;

    invoke-interface {v2}, Lcom/yelp/android/serializable/Media;->getFeedback()Lcom/yelp/android/serializable/Feedback;

    move-result-object v2

    .line 426
    if-eqz p1, :cond_2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Feedback;->isLikedByUser()Z

    move-result v3

    if-nez v3, :cond_2

    .line 427
    invoke-virtual {v2}, Lcom/yelp/android/serializable/Feedback;->addPositiveFeedback()V

    .line 433
    :goto_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->i()V

    .line 435
    if-eqz v0, :cond_1

    .line 436
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 438
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->i:Lcom/yelp/android/serializable/Media;

    sget-object v2, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v0, v2}, Lcom/yelp/android/serializable/Media;->isMediaType(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 439
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->i:Lcom/yelp/android/serializable/Media;

    check-cast v0, Lcom/yelp/android/serializable/Video;

    .line 440
    new-instance v2, Lcom/yelp/android/appdata/webrequests/fn;

    invoke-direct {v2, v0, p1}, Lcom/yelp/android/appdata/webrequests/fn;-><init>(Lcom/yelp/android/serializable/Video;Z)V

    .line 441
    const-string/jumbo v4, "id"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Video;->getBusinessId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const-string/jumbo v4, "video_id"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Video;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    const-string/jumbo v4, "video_source"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Video;->getVideoSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessSaveVideoFeedback:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0, v3}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    move-object v0, v2

    .line 454
    :goto_1
    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->B:Lcom/yelp/android/ui/activities/photoviewer/ad;

    if-eqz v2, :cond_0

    .line 455
    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->B:Lcom/yelp/android/ui/activities/photoviewer/ad;

    invoke-interface {v2, p1}, Lcom/yelp/android/ui/activities/photoviewer/ad;->a(Z)V

    .line 457
    :cond_0
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/av/h;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 459
    :cond_1
    return-void

    .line 429
    :cond_2
    if-nez p1, :cond_4

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Feedback;->isLikedByUser()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 430
    invoke-virtual {v2}, Lcom/yelp/android/serializable/Feedback;->removePositiveFeedback()V

    goto :goto_0

    .line 446
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->i:Lcom/yelp/android/serializable/Media;

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    .line 447
    new-instance v2, Lcom/yelp/android/appdata/webrequests/fm;

    invoke-direct {v2, v0, p1}, Lcom/yelp/android/appdata/webrequests/fm;-><init>(Lcom/yelp/android/serializable/Photo;Z)V

    .line 448
    const-string/jumbo v4, "id"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->getBusinessId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    const-string/jumbo v4, "photo_id"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessSavePhotoFeedback:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0, v3}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 451
    new-instance v0, Lcom/yelp/android/util/ObjectDirtyEvent;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->i:Lcom/yelp/android/serializable/Media;

    const-string/jumbo v4, "com.yelp.android.media.update"

    invoke-direct {v0, v3, v4}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    move-object v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    goto/16 :goto_0
.end method

.method public setLikeDrawable(I)V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->q:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(I)V

    .line 276
    return-void
.end method
