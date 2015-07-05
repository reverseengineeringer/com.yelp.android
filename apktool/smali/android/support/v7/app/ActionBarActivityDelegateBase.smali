.class Landroid/support/v7/app/ActionBarActivityDelegateBase;
.super Landroid/support/v7/app/c;
.source "ActionBarActivityDelegateBase.java"

# interfaces
.implements Landroid/support/v7/internal/view/menu/j;


# instance fields
.field private A:Z

.field private B:Landroid/graphics/Rect;

.field private C:Landroid/graphics/Rect;

.field g:Lcom/yelp/android/m/a;

.field h:Landroid/support/v7/internal/widget/ActionBarContextView;

.field i:Landroid/widget/PopupWindow;

.field j:Ljava/lang/Runnable;

.field private k:Landroid/support/v7/internal/widget/ag;

.field private l:Landroid/support/v7/app/j;

.field private m:Landroid/support/v7/app/n;

.field private n:Z

.field private o:Landroid/view/ViewGroup;

.field private p:Landroid/view/ViewGroup;

.field private q:Landroid/view/View;

.field private r:Ljava/lang/CharSequence;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:[Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

.field private w:Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

.field private x:Z

.field private y:I

.field private final z:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/support/v7/app/ActionBarActivity;)V
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0, p1}, Landroid/support/v7/app/c;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    .line 124
    new-instance v0, Landroid/support/v7/app/f;

    invoke-direct {v0, p0}, Landroid/support/v7/app/f;-><init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;)V

    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->z:Ljava/lang/Runnable;

    .line 145
    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/ActionBarActivityDelegateBase;)I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->y:I

    return v0
.end method

.method private a(IZ)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1281
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->v:[Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt v1, p1, :cond_2

    .line 1282
    :cond_0
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    .line 1283
    if-eqz v0, :cond_1

    .line 1284
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1286
    :cond_1
    iput-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->v:[Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-object v0, v1

    .line 1289
    :cond_2
    aget-object v1, v0, p1

    .line 1290
    if-nez v1, :cond_3

    .line 1291
    new-instance v1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    invoke-direct {v1, p1}, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;-><init>(I)V

    aput-object v1, v0, p1

    move-object v0, v1

    .line 1293
    :goto_0
    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/app/ActionBarActivityDelegateBase;Landroid/view/Menu;)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a(Landroid/view/Menu;)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/Menu;)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1268
    iget-object v3, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->v:[Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    .line 1269
    if-eqz v3, :cond_0

    array-length v0, v3

    :goto_0
    move v2, v1

    .line 1270
    :goto_1
    if-ge v2, v0, :cond_2

    .line 1271
    aget-object v1, v3, v2

    .line 1272
    if-eqz v1, :cond_1

    iget-object v4, v1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/i;

    if-ne v4, p1, :cond_1

    move-object v0, v1

    .line 1276
    :goto_2
    return-object v0

    :cond_0
    move v0, v1

    .line 1269
    goto :goto_0

    .line 1270
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 1276
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private a(ILandroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/Menu;)V
    .locals 1

    .prologue
    .line 1246
    if-nez p3, :cond_1

    .line 1248
    if-nez p2, :cond_0

    .line 1249
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->v:[Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 1250
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->v:[Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    aget-object p2, v0, p1

    .line 1254
    :cond_0
    if-eqz p2, :cond_1

    .line 1256
    iget-object p3, p2, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/i;

    .line 1261
    :cond_1
    if-eqz p2, :cond_2

    iget-boolean v0, p2, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->o:Z

    if-nez v0, :cond_2

    .line 1265
    :goto_0
    return-void

    .line 1264
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->n()Lcom/yelp/android/i/h;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lcom/yelp/android/i/h;->b(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method private a(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)V
    .locals 10

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v2, -0x2

    .line 810
    iget-boolean v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->o:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 906
    :cond_0
    :goto_0
    return-void

    .line 816
    :cond_1
    iget v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->a:I

    if-nez v0, :cond_2

    .line 817
    iget-object v4, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    .line 818
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 819
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v5, 0x4

    if-ne v0, v5, :cond_3

    move v0, v9

    .line 821
    :goto_1
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_4

    move v4, v9

    .line 824
    :goto_2
    if-eqz v0, :cond_2

    if-nez v4, :cond_0

    .line 829
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->n()Lcom/yelp/android/i/h;

    move-result-object v0

    .line 830
    if-eqz v0, :cond_5

    iget v4, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->a:I

    iget-object v5, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/i;

    invoke-interface {v0, v4, v5}, Lcom/yelp/android/i/h;->c(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 832
    invoke-direct {p0, p1, v9}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    goto :goto_0

    :cond_3
    move v0, v3

    .line 819
    goto :goto_1

    :cond_4
    move v4, v3

    .line 821
    goto :goto_2

    .line 836
    :cond_5
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    const-string/jumbo v4, "window"

    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBarActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/WindowManager;

    .line 837
    if-eqz v8, :cond_0

    .line 842
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->b(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->q:Z

    if-eqz v0, :cond_c

    .line 848
    :cond_6
    iget-object v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->g:Landroid/view/ViewGroup;

    if-nez v0, :cond_b

    .line 850
    invoke-direct {p0, p1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 858
    :cond_7
    :goto_3
    invoke-direct {p0, p1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->c(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 863
    if-nez v0, :cond_e

    .line 864
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v1, v0

    .line 867
    :goto_4
    iget v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->b:I

    .line 868
    iget-object v4, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 870
    iget-object v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 871
    if-eqz v0, :cond_8

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_8

    .line 872
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v4, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 874
    :cond_8
    iget-object v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->g:Landroid/view/ViewGroup;

    iget-object v4, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {v0, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 880
    iget-object v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_9

    .line 881
    iget-object v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_9
    move v1, v2

    .line 892
    :cond_a
    :goto_5
    iput-boolean v3, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->n:Z

    .line 894
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v3, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->d:I

    iget v4, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->e:I

    const/16 v5, 0x3ea

    const/high16 v6, 0x820000

    const/4 v7, -0x3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 901
    iget v1, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->c:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 902
    iget v1, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->f:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 904
    iget-object v1, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-interface {v8, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 905
    iput-boolean v9, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->o:Z

    goto/16 :goto_0

    .line 852
    :cond_b
    iget-boolean v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->q:Z

    if-eqz v0, :cond_7

    iget-object v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 854
    iget-object v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_3

    .line 883
    :cond_c
    iget-object v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->i:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 886
    iget-object v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 887
    if-eqz v0, :cond_d

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v0, v1, :cond_a

    :cond_d
    move v1, v2

    goto :goto_5

    :cond_e
    move-object v1, v0

    goto :goto_4
.end method

.method private a(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1144
    if-eqz p2, :cond_1

    iget v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->a:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->k:Landroid/support/v7/internal/widget/ag;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->k:Landroid/support/v7/internal/widget/ag;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ag;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1146
    iget-object v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/i;

    invoke-direct {p0, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->b(Landroid/support/v7/internal/view/menu/i;)V

    .line 1175
    :cond_0
    :goto_0
    return-void

    .line 1150
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1151
    if-eqz v0, :cond_3

    iget-boolean v1, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->o:Z

    if-eqz v1, :cond_3

    .line 1152
    iget-object v1, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->g:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 1153
    iget-object v1, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1156
    :cond_2
    if-eqz p2, :cond_3

    .line 1157
    iget v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->a:I

    invoke-direct {p0, v0, p1, v3}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a(ILandroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/Menu;)V

    .line 1161
    :cond_3
    iput-boolean v2, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->m:Z

    .line 1162
    iput-boolean v2, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->n:Z

    .line 1163
    iput-boolean v2, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->o:Z

    .line 1166
    iput-object v3, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->h:Landroid/view/View;

    .line 1170
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->q:Z

    .line 1172
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->w:Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    if-ne v0, p1, :cond_0

    .line 1173
    iput-object v3, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->w:Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/app/ActionBarActivityDelegateBase;I)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->f(I)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/ActionBarActivityDelegateBase;ILandroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a(ILandroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/ActionBarActivityDelegateBase;Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/ActionBarActivityDelegateBase;Landroid/support/v7/internal/view/menu/i;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->b(Landroid/support/v7/internal/view/menu/i;)V

    return-void
.end method

.method private a(Landroid/support/v7/internal/view/menu/i;Z)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 916
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->k:Landroid/support/v7/internal/widget/ag;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->k:Landroid/support/v7/internal/widget/ag;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ag;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/cx;->b(Landroid/view/ViewConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->k:Landroid/support/v7/internal/widget/ag;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ag;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 920
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->n()Lcom/yelp/android/i/h;

    move-result-object v0

    .line 922
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->k:Landroid/support/v7/internal/widget/ag;

    invoke-interface {v1}, Landroid/support/v7/internal/widget/ag;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_4

    .line 923
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->p()Z

    move-result v1

    if-nez v1, :cond_3

    .line 925
    iget-boolean v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->x:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->y:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 927
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->o:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->z:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 928
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->z:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 931
    :cond_2
    invoke-direct {p0, v4, v3}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a(IZ)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v1

    .line 935
    iget-object v2, v1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/i;

    if-eqz v2, :cond_3

    iget-boolean v2, v1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->r:Z

    if-nez v2, :cond_3

    iget-object v2, v1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->i:Landroid/view/View;

    iget-object v3, v1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/i;

    invoke-interface {v0, v4, v2, v3}, Lcom/yelp/android/i/h;->a(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 937
    iget-object v1, v1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/i;

    invoke-interface {v0, v5, v1}, Lcom/yelp/android/i/h;->c(ILandroid/view/Menu;)Z

    .line 938
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->k:Landroid/support/v7/internal/widget/ag;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ag;->g()Z

    .line 957
    :cond_3
    :goto_0
    return-void

    .line 942
    :cond_4
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->k:Landroid/support/v7/internal/widget/ag;

    invoke-interface {v1}, Landroid/support/v7/internal/widget/ag;->h()Z

    .line 943
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->p()Z

    move-result v1

    if-nez v1, :cond_3

    .line 944
    invoke-direct {p0, v4, v3}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a(IZ)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v1

    .line 945
    iget-object v1, v1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/i;

    invoke-interface {v0, v5, v1}, Lcom/yelp/android/i/h;->b(ILandroid/view/Menu;)V

    goto :goto_0

    .line 951
    :cond_5
    invoke-direct {p0, v4, v3}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a(IZ)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v0

    .line 953
    iput-boolean v3, v0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->q:Z

    .line 954
    invoke-direct {p0, v0, v4}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    .line 956
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method private a(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;)Z
    .locals 2

    .prologue
    .line 909
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->m()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->a(Landroid/content/Context;)V

    .line 910
    new-instance v0, Landroid/support/v7/app/l;

    iget-object v1, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->l:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/l;-><init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;Landroid/content/Context;)V

    iput-object v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->g:Landroid/view/ViewGroup;

    .line 911
    const/16 v0, 0x51

    iput v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->c:I

    .line 912
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic a(Landroid/support/v7/app/ActionBarActivityDelegateBase;Z)Z
    .locals 0

    .prologue
    .line 92
    iput-boolean p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->x:Z

    return p1
.end method

.method static synthetic b(Landroid/support/v7/app/ActionBarActivityDelegateBase;I)I
    .locals 0

    .prologue
    .line 92
    iput p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->y:I

    return p1
.end method

.method private b(Landroid/support/v7/internal/view/menu/i;)V
    .locals 2

    .prologue
    .line 1126
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->u:Z

    if-eqz v0, :cond_0

    .line 1137
    :goto_0
    return-void

    .line 1130
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->u:Z

    .line 1131
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->k:Landroid/support/v7/internal/widget/ag;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ag;->j()V

    .line 1132
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->n()Lcom/yelp/android/i/h;

    move-result-object v0

    .line 1133
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->p()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1134
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Lcom/yelp/android/i/h;->b(ILandroid/view/Menu;)V

    .line 1136
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->u:Z

    goto :goto_0
.end method

.method private b(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 960
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    .line 963
    iget v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->a:I

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->a:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_4

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->k:Landroid/support/v7/internal/widget/ag;

    if-eqz v0, :cond_4

    .line 965
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 966
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 967
    sget v0, Lcom/yelp/android/g/b;->actionBarTheme:I

    invoke-virtual {v3, v0, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 969
    const/4 v0, 0x0

    .line 970
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_3

    .line 971
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 972
    invoke-virtual {v0, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 973
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 974
    sget v4, Lcom/yelp/android/g/b;->actionBarWidgetTheme:I

    invoke-virtual {v0, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 981
    :goto_0
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_2

    .line 982
    if-nez v0, :cond_1

    .line 983
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 984
    invoke-virtual {v0, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 986
    :cond_1
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_2
    move-object v2, v0

    .line 989
    if-eqz v2, :cond_4

    .line 990
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 991
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 995
    :goto_1
    new-instance v1, Landroid/support/v7/internal/view/menu/i;

    invoke-direct {v1, v0}, Landroid/support/v7/internal/view/menu/i;-><init>(Landroid/content/Context;)V

    .line 996
    invoke-virtual {v1, p0}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/support/v7/internal/view/menu/j;)V

    .line 997
    invoke-virtual {p1, v1}, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->a(Landroid/support/v7/internal/view/menu/i;)V

    .line 999
    return v5

    .line 977
    :cond_3
    sget v4, Lcom/yelp/android/g/b;->actionBarWidgetTheme:I

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method private b(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1024
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1122
    :cond_0
    :goto_0
    return v2

    .line 1029
    :cond_1
    iget-boolean v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->m:Z

    if-eqz v0, :cond_2

    move v2, v1

    .line 1030
    goto :goto_0

    .line 1033
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->w:Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->w:Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    if-eq v0, p1, :cond_3

    .line 1035
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->w:Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    invoke-direct {p0, v0, v2}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    .line 1038
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->n()Lcom/yelp/android/i/h;

    move-result-object v3

    .line 1040
    if-eqz v3, :cond_4

    .line 1041
    iget v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->a:I

    invoke-interface {v3, v0}, Lcom/yelp/android/i/h;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->i:Landroid/view/View;

    .line 1044
    :cond_4
    iget v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->a:I

    if-eqz v0, :cond_5

    iget v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->a:I

    const/16 v4, 0x8

    if-ne v0, v4, :cond_b

    :cond_5
    move v0, v1

    .line 1047
    :goto_1
    if-eqz v0, :cond_6

    iget-object v4, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->k:Landroid/support/v7/internal/widget/ag;

    if-eqz v4, :cond_6

    .line 1050
    iget-object v4, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->k:Landroid/support/v7/internal/widget/ag;

    invoke-interface {v4}, Landroid/support/v7/internal/widget/ag;->i()V

    .line 1053
    :cond_6
    iget-object v4, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->i:Landroid/view/View;

    if-nez v4, :cond_11

    .line 1055
    iget-object v4, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/i;

    if-eqz v4, :cond_7

    iget-boolean v4, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->r:Z

    if-eqz v4, :cond_d

    .line 1056
    :cond_7
    iget-object v4, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/i;

    if-nez v4, :cond_8

    .line 1057
    invoke-direct {p0, p1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->b(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/i;

    if-eqz v4, :cond_0

    .line 1062
    :cond_8
    if-eqz v0, :cond_a

    iget-object v4, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->k:Landroid/support/v7/internal/widget/ag;

    if-eqz v4, :cond_a

    .line 1063
    iget-object v4, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->l:Landroid/support/v7/app/j;

    if-nez v4, :cond_9

    .line 1064
    new-instance v4, Landroid/support/v7/app/j;

    invoke-direct {v4, p0, v7}, Landroid/support/v7/app/j;-><init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;Landroid/support/v7/app/f;)V

    iput-object v4, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->l:Landroid/support/v7/app/j;

    .line 1066
    :cond_9
    iget-object v4, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->k:Landroid/support/v7/internal/widget/ag;

    iget-object v5, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/i;

    iget-object v6, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->l:Landroid/support/v7/app/j;

    invoke-interface {v4, v5, v6}, Landroid/support/v7/internal/widget/ag;->a(Landroid/view/Menu;Landroid/support/v7/internal/view/menu/y;)V

    .line 1071
    :cond_a
    iget-object v4, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v4}, Landroid/support/v7/internal/view/menu/i;->g()V

    .line 1072
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->n()Lcom/yelp/android/i/h;

    move-result-object v4

    iget v5, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->a:I

    iget-object v6, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/i;

    invoke-interface {v4, v5, v6}, Lcom/yelp/android/i/h;->a(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 1074
    invoke-virtual {p1, v7}, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->a(Landroid/support/v7/internal/view/menu/i;)V

    .line 1076
    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->k:Landroid/support/v7/internal/widget/ag;

    if-eqz v0, :cond_0

    .line 1078
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->k:Landroid/support/v7/internal/widget/ag;

    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->l:Landroid/support/v7/app/j;

    invoke-interface {v0, v7, v1}, Landroid/support/v7/internal/widget/ag;->a(Landroid/view/Menu;Landroid/support/v7/internal/view/menu/y;)V

    goto/16 :goto_0

    :cond_b
    move v0, v2

    .line 1044
    goto :goto_1

    .line 1084
    :cond_c
    iput-boolean v2, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->r:Z

    .line 1089
    :cond_d
    iget-object v4, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v4}, Landroid/support/v7/internal/view/menu/i;->g()V

    .line 1093
    iget-object v4, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->s:Landroid/os/Bundle;

    if-eqz v4, :cond_e

    .line 1094
    iget-object v4, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/i;

    iget-object v5, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->s:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Landroid/support/v7/internal/view/menu/i;->b(Landroid/os/Bundle;)V

    .line 1095
    iput-object v7, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->s:Landroid/os/Bundle;

    .line 1099
    :cond_e
    iget-object v4, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->i:Landroid/view/View;

    iget-object v5, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/i;

    invoke-interface {v3, v2, v4, v5}, Lcom/yelp/android/i/h;->a(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 1100
    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->k:Landroid/support/v7/internal/widget/ag;

    if-eqz v0, :cond_f

    .line 1103
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->k:Landroid/support/v7/internal/widget/ag;

    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->l:Landroid/support/v7/app/j;

    invoke-interface {v0, v7, v1}, Landroid/support/v7/internal/widget/ag;->a(Landroid/view/Menu;Landroid/support/v7/internal/view/menu/y;)V

    .line 1105
    :cond_f
    iget-object v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->h()V

    goto/16 :goto_0

    .line 1110
    :cond_10
    if-eqz p2, :cond_12

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    :goto_2
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 1112
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    if-eq v0, v1, :cond_13

    move v0, v1

    :goto_3
    iput-boolean v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->p:Z

    .line 1113
    iget-object v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/i;

    iget-boolean v3, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->p:Z

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/view/menu/i;->setQwertyMode(Z)V

    .line 1114
    iget-object v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->h()V

    .line 1118
    :cond_11
    iput-boolean v1, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->m:Z

    .line 1119
    iput-boolean v2, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->n:Z

    .line 1120
    iput-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->w:Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move v2, v1

    .line 1122
    goto/16 :goto_0

    .line 1110
    :cond_12
    const/4 v0, -0x1

    goto :goto_2

    :cond_13
    move v0, v2

    .line 1112
    goto :goto_3
.end method

.method static synthetic c(Landroid/support/v7/app/ActionBarActivityDelegateBase;I)I
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->g(I)I

    move-result v0

    return v0
.end method

.method private c(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1003
    iget-object v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->i:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->h:Landroid/view/View;

    .line 1020
    :goto_0
    return v1

    .line 1008
    :cond_0
    iget-object v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/i;

    if-nez v0, :cond_1

    move v1, v2

    .line 1009
    goto :goto_0

    .line 1012
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->m:Landroid/support/v7/app/n;

    if-nez v0, :cond_2

    .line 1013
    new-instance v0, Landroid/support/v7/app/n;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Landroid/support/v7/app/n;-><init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;Landroid/support/v7/app/f;)V

    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->m:Landroid/support/v7/app/n;

    .line 1016
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->m:Landroid/support/v7/app/n;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->a(Landroid/support/v7/internal/view/menu/y;)Landroid/support/v7/internal/view/menu/z;

    move-result-object v0

    .line 1018
    check-cast v0, Landroid/view/View;

    iput-object v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->h:Landroid/view/View;

    .line 1020
    iget-object v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->h:Landroid/view/View;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private d(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1140
    invoke-direct {p0, p1, v1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a(IZ)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    .line 1141
    return-void
.end method

.method static synthetic d(Landroid/support/v7/app/ActionBarActivityDelegateBase;I)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->d(I)V

    return-void
.end method

.method private d(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 1178
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1179
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a(IZ)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v0

    .line 1180
    iget-boolean v1, v0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->o:Z

    if-nez v1, :cond_0

    .line 1181
    invoke-direct {p0, v0, p2}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->b(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1185
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1322
    iget v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->y:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->y:I

    .line 1324
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->x:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->o:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1325
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->o:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->z:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ce;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1326
    iput-boolean v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->x:Z

    .line 1328
    :cond_0
    return-void
.end method

.method private e(ILandroid/view/KeyEvent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1189
    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->g:Lcom/yelp/android/m/a;

    if-eqz v2, :cond_1

    .line 1242
    :cond_0
    :goto_0
    return-void

    .line 1194
    :cond_1
    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a(IZ)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v3

    .line 1195
    if-nez p1, :cond_3

    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->k:Landroid/support/v7/internal/widget/ag;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->k:Landroid/support/v7/internal/widget/ag;

    invoke-interface {v2}, Landroid/support/v7/internal/widget/ag;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/view/cx;->b(Landroid/view/ViewConfiguration;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1198
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->k:Landroid/support/v7/internal/widget/ag;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ag;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1199
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->p()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0, v3, p2}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->b(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1200
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->k:Landroid/support/v7/internal/widget/ag;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ag;->g()Z

    move-result v0

    .line 1233
    :goto_1
    if-eqz v0, :cond_0

    .line 1234
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    const-string/jumbo v2, "audio"

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBarActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1236
    if-eqz v0, :cond_6

    .line 1237
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    .line 1203
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->k:Landroid/support/v7/internal/widget/ag;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ag;->h()Z

    move-result v0

    goto :goto_1

    .line 1206
    :cond_3
    iget-boolean v2, v3, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->o:Z

    if-nez v2, :cond_4

    iget-boolean v2, v3, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->n:Z

    if-eqz v2, :cond_5

    .line 1210
    :cond_4
    iget-boolean v2, v3, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->o:Z

    .line 1213
    invoke-direct {p0, v3, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    move v0, v2

    goto :goto_1

    .line 1215
    :cond_5
    iget-boolean v2, v3, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->m:Z

    if-eqz v2, :cond_7

    .line 1217
    iget-boolean v2, v3, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->r:Z

    if-eqz v2, :cond_8

    .line 1220
    iput-boolean v1, v3, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->m:Z

    .line 1221
    invoke-direct {p0, v3, p2}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->b(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    .line 1224
    :goto_2
    if-eqz v2, :cond_7

    .line 1226
    invoke-direct {p0, v3, p2}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 1239
    :cond_6
    const-string/jumbo v0, "ActionBarActivityDelegateBase"

    const-string/jumbo v1, "Couldn\'t get audio manager"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_1

    :cond_8
    move v2, v0

    goto :goto_2
.end method

.method private f(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1331
    invoke-direct {p0, p1, v4}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a(IZ)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v0

    .line 1333
    iget-object v1, v0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/i;

    if-eqz v1, :cond_1

    .line 1334
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1335
    iget-object v2, v0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v2, v1}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/os/Bundle;)V

    .line 1336
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1337
    iput-object v1, v0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->s:Landroid/os/Bundle;

    .line 1340
    :cond_0
    iget-object v1, v0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/i;->g()V

    .line 1341
    iget-object v1, v0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/i;->clear()V

    .line 1343
    :cond_1
    iput-boolean v4, v0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->r:Z

    .line 1344
    iput-boolean v4, v0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->q:Z

    .line 1347
    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->k:Landroid/support/v7/internal/widget/ag;

    if-eqz v0, :cond_3

    .line 1349
    invoke-direct {p0, v3, v3}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a(IZ)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v0

    .line 1350
    if-eqz v0, :cond_3

    .line 1351
    iput-boolean v3, v0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->m:Z

    .line 1352
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->b(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 1355
    :cond_3
    return-void
.end method

.method private g(I)I
    .locals 8

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1364
    .line 1366
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->h:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_c

    .line 1367
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->h:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_c

    .line 1368
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->h:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1372
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->h:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1373
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->B:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    .line 1374
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->B:Landroid/graphics/Rect;

    .line 1375
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->C:Landroid/graphics/Rect;

    .line 1377
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->B:Landroid/graphics/Rect;

    .line 1378
    iget-object v4, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->C:Landroid/graphics/Rect;

    .line 1379
    invoke-virtual {v1, v2, p1, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1381
    iget-object v5, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->p:Landroid/view/ViewGroup;

    invoke-static {v5, v1, v4}, Landroid/support/v7/internal/widget/bm;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1382
    iget v1, v4, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_4

    move v1, p1

    .line 1383
    :goto_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v4, v1, :cond_b

    .line 1385
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1387
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->q:Landroid/view/View;

    if-nez v1, :cond_5

    .line 1388
    new-instance v1, Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-direct {v1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->q:Landroid/view/View;

    .line 1389
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->q:Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v4}, Landroid/support/v7/app/ActionBarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yelp/android/g/d;->abc_input_method_navigation_guard:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1391
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->p:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->q:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move v1, v3

    .line 1405
    :goto_1
    iget-object v4, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->q:Landroid/view/View;

    if-eqz v4, :cond_7

    .line 1411
    :goto_2
    iget-boolean v4, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->d:Z

    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    move p1, v2

    :cond_1
    move v7, v1

    move v1, v3

    move v3, v7

    .line 1421
    :goto_3
    if-eqz v3, :cond_2

    .line 1422
    iget-object v3, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->h:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v3, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    move v0, v1

    .line 1426
    :goto_4
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->q:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1427
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->q:Landroid/view/View;

    if-eqz v0, :cond_9

    :goto_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1430
    :cond_3
    return p1

    :cond_4
    move v1, v2

    .line 1382
    goto :goto_0

    .line 1395
    :cond_5
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->q:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1396
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, p1, :cond_6

    .line 1397
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1398
    iget-object v4, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->q:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    move v1, v3

    goto :goto_1

    :cond_7
    move v3, v2

    .line 1405
    goto :goto_2

    .line 1416
    :cond_8
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v1, :cond_a

    .line 1418
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v1, v2

    goto :goto_3

    .line 1427
    :cond_9
    const/16 v2, 0x8

    goto :goto_5

    :cond_a
    move v3, v2

    move v1, v2

    goto :goto_3

    :cond_b
    move v1, v2

    goto :goto_1

    :cond_c
    move v0, v2

    goto :goto_4
.end method

.method private s()V
    .locals 11

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x5

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 403
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    sget-object v2, Lcom/yelp/android/g/l;->Theme:[I

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBarActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 410
    sget v0, Lcom/yelp/android/g/l;->Theme_windowFixedWidthMajor:I

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 411
    if-nez v1, :cond_f

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 412
    :goto_0
    sget v2, Lcom/yelp/android/g/l;->Theme_windowFixedWidthMajor:I

    invoke-virtual {v6, v2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 414
    :goto_1
    sget v2, Lcom/yelp/android/g/l;->Theme_windowFixedWidthMinor:I

    invoke-virtual {v6, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 415
    if-nez v1, :cond_d

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 416
    :goto_2
    sget v3, Lcom/yelp/android/g/l;->Theme_windowFixedWidthMinor:I

    invoke-virtual {v6, v3, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 418
    :goto_3
    sget v3, Lcom/yelp/android/g/l;->Theme_windowFixedHeightMajor:I

    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 419
    if-nez v1, :cond_b

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 420
    :goto_4
    sget v5, Lcom/yelp/android/g/l;->Theme_windowFixedHeightMajor:I

    invoke-virtual {v6, v5, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 422
    :goto_5
    sget v5, Lcom/yelp/android/g/l;->Theme_windowFixedHeightMinor:I

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 423
    if-nez v1, :cond_0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 424
    :cond_0
    sget v5, Lcom/yelp/android/g/l;->Theme_windowFixedHeightMinor:I

    invoke-virtual {v6, v5, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 427
    :cond_1
    iget-object v5, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v5}, Landroid/support/v7/app/ActionBarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 428
    iget v5, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v5, v8, :cond_4

    const/4 v5, 0x1

    .line 432
    :goto_6
    if-eqz v5, :cond_5

    .line 433
    :goto_7
    if-eqz v2, :cond_a

    iget v0, v2, Landroid/util/TypedValue;->type:I

    if-eqz v0, :cond_a

    .line 434
    iget v0, v2, Landroid/util/TypedValue;->type:I

    if-ne v0, v9, :cond_6

    .line 435
    invoke-virtual {v2, v7}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    move v2, v0

    .line 441
    :goto_8
    if-eqz v5, :cond_7

    .line 442
    :goto_9
    if-eqz v3, :cond_9

    iget v0, v3, Landroid/util/TypedValue;->type:I

    if-eqz v0, :cond_9

    .line 443
    iget v0, v3, Landroid/util/TypedValue;->type:I

    if-ne v0, v9, :cond_8

    .line 444
    invoke-virtual {v3, v7}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 450
    :goto_a
    if-ne v2, v4, :cond_2

    if-eq v0, v4, :cond_3

    .line 451
    :cond_2
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setLayout(II)V

    .line 454
    :cond_3
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 455
    return-void

    .line 428
    :cond_4
    const/4 v5, 0x0

    goto :goto_6

    :cond_5
    move-object v2, v0

    .line 432
    goto :goto_7

    .line 436
    :cond_6
    iget v0, v2, Landroid/util/TypedValue;->type:I

    if-ne v0, v10, :cond_a

    .line 437
    iget v0, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v8, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v8, v8

    invoke-virtual {v2, v0, v8}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v0

    float-to-int v0, v0

    move v2, v0

    goto :goto_8

    :cond_7
    move-object v3, v1

    .line 441
    goto :goto_9

    .line 445
    :cond_8
    iget v0, v3, Landroid/util/TypedValue;->type:I

    if-ne v0, v10, :cond_9

    .line 446
    iget v0, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v1, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    invoke-virtual {v3, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v0

    float-to-int v0, v0

    goto :goto_a

    :cond_9
    move v0, v4

    goto :goto_a

    :cond_a
    move v2, v4

    goto :goto_8

    :cond_b
    move-object v3, v1

    goto/16 :goto_4

    :cond_c
    move-object v3, v1

    goto/16 :goto_5

    :cond_d
    move-object v2, v1

    goto/16 :goto_2

    :cond_e
    move-object v2, v1

    goto/16 :goto_3

    :cond_f
    move-object v0, v1

    goto/16 :goto_0

    :cond_10
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private t()V
    .locals 2

    .prologue
    .line 1434
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->n:Z

    if-eqz v0, :cond_0

    .line 1435
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v1, "supportRequestWindowFeature() must be called before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1438
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/app/ActionBar;
    .locals 3

    .prologue
    .line 172
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->q()V

    .line 173
    new-instance v0, Lcom/yelp/android/i/i;

    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    iget-boolean v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->c:Z

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/i/i;-><init>(Landroid/support/v7/app/ActionBarActivity;Z)V

    .line 174
    iget-boolean v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->A:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->f(Z)V

    .line 175
    return-object v0
.end method

.method a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .prologue
    .line 781
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 784
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 805
    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 784
    :sswitch_0
    const-string/jumbo v1, "EditText"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "Spinner"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "CheckBox"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "RadioButton"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "CheckedTextView"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v1, "AutoCompleteTextView"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v1, "MultiAutoCompleteTextView"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v1, "RatingBar"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v1, "Button"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    .line 786
    :pswitch_0
    new-instance v0, Landroid/support/v7/internal/widget/TintEditText;

    invoke-direct {v0, p2, p3}, Landroid/support/v7/internal/widget/TintEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 788
    :pswitch_1
    new-instance v0, Landroid/support/v7/internal/widget/TintSpinner;

    invoke-direct {v0, p2, p3}, Landroid/support/v7/internal/widget/TintSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 790
    :pswitch_2
    new-instance v0, Landroid/support/v7/internal/widget/TintCheckBox;

    invoke-direct {v0, p2, p3}, Landroid/support/v7/internal/widget/TintCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 792
    :pswitch_3
    new-instance v0, Landroid/support/v7/internal/widget/TintRadioButton;

    invoke-direct {v0, p2, p3}, Landroid/support/v7/internal/widget/TintRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 794
    :pswitch_4
    new-instance v0, Landroid/support/v7/internal/widget/TintCheckedTextView;

    invoke-direct {v0, p2, p3}, Landroid/support/v7/internal/widget/TintCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_1

    .line 796
    :pswitch_5
    new-instance v0, Landroid/support/v7/internal/widget/TintAutoCompleteTextView;

    invoke-direct {v0, p2, p3}, Landroid/support/v7/internal/widget/TintAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_1

    .line 798
    :pswitch_6
    new-instance v0, Landroid/support/v7/internal/widget/TintMultiAutoCompleteTextView;

    invoke-direct {v0, p2, p3}, Landroid/support/v7/internal/widget/TintMultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_1

    .line 800
    :pswitch_7
    new-instance v0, Landroid/support/v7/internal/widget/TintRatingBar;

    invoke-direct {v0, p2, p3}, Landroid/support/v7/internal/widget/TintRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_1

    .line 802
    :pswitch_8
    new-instance v0, Landroid/support/v7/internal/widget/TintButton;

    invoke-direct {v0, p2, p3}, Landroid/support/v7/internal/widget/TintButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_1

    .line 784
    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_7
        -0x56c015e7 -> :sswitch_4
        -0x503aa7ad -> :sswitch_6
        -0x1440b607 -> :sswitch_1
        0x2e46a6ed -> :sswitch_3
        0x5445f9ba -> :sswitch_5
        0x5f7507c3 -> :sswitch_2
        0x63577677 -> :sswitch_0
        0x77471352 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public a(Lcom/yelp/android/m/b;)Lcom/yelp/android/m/a;
    .locals 3

    .prologue
    .line 558
    if-nez p1, :cond_0

    .line 559
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ActionMode callback can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->g:Lcom/yelp/android/m/a;

    if-eqz v0, :cond_1

    .line 563
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->g:Lcom/yelp/android/m/a;

    invoke-virtual {v0}, Lcom/yelp/android/m/a;->c()V

    .line 566
    :cond_1
    new-instance v0, Landroid/support/v7/app/k;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/k;-><init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;Lcom/yelp/android/m/b;)V

    .line 568
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 569
    if-eqz v1, :cond_2

    .line 570
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->a(Lcom/yelp/android/m/b;)Lcom/yelp/android/m/a;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->g:Lcom/yelp/android/m/a;

    .line 571
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->g:Lcom/yelp/android/m/a;

    if-eqz v1, :cond_2

    .line 572
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->g:Lcom/yelp/android/m/a;

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBarActivity;->onSupportActionModeStarted(Lcom/yelp/android/m/a;)V

    .line 576
    :cond_2
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->g:Lcom/yelp/android/m/a;

    if-nez v1, :cond_3

    .line 578
    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->b(Lcom/yelp/android/m/b;)Lcom/yelp/android/m/a;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->g:Lcom/yelp/android/m/a;

    .line 581
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->g:Lcom/yelp/android/m/a;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 237
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->q()V

    .line 238
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 239
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 240
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 241
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->onSupportContentChanged()V

    .line 242
    return-void
.end method

.method public a(ILandroid/view/Menu;)V
    .locals 2

    .prologue
    .line 514
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 515
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 516
    if-eqz v0, :cond_0

    .line 517
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->h(Z)V

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 522
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->superOnPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->n:Z

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->a(Landroid/content/res/Configuration;)V

    .line 208
    :cond_0
    return-void
.end method

.method a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 149
    invoke-super {p0, p1}, Landroid/support/v7/app/c;->a(Landroid/os/Bundle;)V

    .line 151
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->o:Landroid/view/ViewGroup;

    .line 153
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-static {v0}, Landroid/support/v4/app/NavUtils;->getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->c()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 156
    if-nez v0, :cond_1

    .line 157
    iput-boolean v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->A:Z

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->f(Z)V

    goto :goto_0
.end method

.method public a(Landroid/support/v7/internal/view/menu/i;)V
    .locals 1

    .prologue
    .line 553
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a(Landroid/support/v7/internal/view/menu/i;Z)V

    .line 554
    return-void
.end method

.method a(Landroid/support/v7/widget/Toolbar;)V
    .locals 4

    .prologue
    .line 180
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 181
    instance-of v0, v0, Lcom/yelp/android/i/i;

    if-eqz v0, :cond_0

    .line 182
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    new-instance v0, Lcom/yelp/android/i/a;

    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v2}, Landroid/support/v7/app/ActionBarActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->f:Lcom/yelp/android/i/h;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/yelp/android/i/a;-><init>(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window;Lcom/yelp/android/i/h;)V

    .line 191
    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a(Landroid/support/v7/app/ActionBar;)V

    .line 192
    invoke-virtual {v0}, Lcom/yelp/android/i/a;->i()Lcom/yelp/android/i/h;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a(Lcom/yelp/android/i/h;)V

    .line 193
    invoke-virtual {v0}, Lcom/yelp/android/i/a;->g()Z

    .line 194
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 228
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->q()V

    .line 229
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 230
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 231
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 232
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->onSupportContentChanged()V

    .line 233
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 246
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->q()V

    .line 247
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 248
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 249
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->onSupportContentChanged()V

    .line 251
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->k:Landroid/support/v7/internal/widget/ag;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->k:Landroid/support/v7/internal/widget/ag;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/ag;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 494
    :goto_0
    return-void

    .line 489
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 490
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->b(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 492
    :cond_1
    iput-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->r:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 681
    return-void
.end method

.method a(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 706
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    .line 707
    if-eqz v2, :cond_1

    invoke-virtual {v2, p1, p2}, Landroid/support/v7/app/ActionBar;->a(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 737
    :cond_0
    :goto_0
    return v0

    .line 713
    :cond_1
    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->w:Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    if-eqz v2, :cond_2

    .line 714
    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->w:Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {p0, v2, v3, p2, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v2

    .line 716
    if-eqz v2, :cond_2

    .line 717
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->w:Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    if-eqz v1, :cond_0

    .line 718
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->w:Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    iput-boolean v0, v1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->n:Z

    goto :goto_0

    .line 728
    :cond_2
    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->w:Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    if-nez v2, :cond_3

    .line 729
    invoke-direct {p0, v1, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a(IZ)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v2

    .line 730
    invoke-direct {p0, v2, p2}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->b(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 731
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {p0, v2, v3, p2, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v3

    .line 732
    iput-boolean v1, v2, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->m:Z

    .line 733
    if-nez v3, :cond_0

    :cond_3
    move v0, v1

    .line 737
    goto :goto_0
.end method

.method public a(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 506
    if-eqz p1, :cond_0

    .line 507
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->n()Lcom/yelp/android/i/h;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/yelp/android/i/h;->a(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 509
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1298
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1318
    :cond_0
    :goto_0
    return v0

    .line 1306
    :cond_1
    iget-boolean v1, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->m:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1, p3}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->b(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/i;

    if-eqz v1, :cond_3

    .line 1308
    iget-object v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0, p2, p3, p4}, Landroid/support/v7/internal/view/menu/i;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 1311
    :cond_3
    if-eqz v0, :cond_0

    .line 1313
    and-int/lit8 v1, p4, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->k:Landroid/support/v7/internal/widget/ag;

    if-nez v1, :cond_0

    .line 1314
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    goto :goto_0
.end method

.method public a(Landroid/support/v7/internal/view/menu/i;Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 541
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->n()Lcom/yelp/android/i/h;

    move-result-object v0

    .line 542
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->p()Z

    move-result v1

    if-nez v1, :cond_0

    .line 543
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/i;->p()Landroid/support/v7/internal/view/menu/i;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a(Landroid/view/Menu;)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v1

    .line 544
    if-eqz v1, :cond_0

    .line 545
    iget v1, v1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->a:I

    invoke-interface {v0, v1, p2}, Lcom/yelp/android/i/h;->a(ILandroid/view/MenuItem;)Z

    move-result v0

    .line 548
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 742
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 743
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 744
    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 746
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v1, p1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->c(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 744
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 746
    :cond_1
    invoke-virtual {p0, v1, p1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method b(Lcom/yelp/android/m/b;)Lcom/yelp/android/m/a;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 594
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->g:Lcom/yelp/android/m/a;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->g:Lcom/yelp/android/m/a;

    invoke-virtual {v0}, Lcom/yelp/android/m/a;->c()V

    .line 598
    :cond_0
    new-instance v3, Landroid/support/v7/app/k;

    invoke-direct {v3, p0, p1}, Landroid/support/v7/app/k;-><init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;Lcom/yelp/android/m/b;)V

    .line 599
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->m()Landroid/content/Context;

    move-result-object v4

    .line 601
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->h:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-nez v0, :cond_1

    .line 602
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->e:Z

    if-eqz v0, :cond_5

    .line 603
    new-instance v0, Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-direct {v0, v4}, Landroid/support/v7/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->h:Landroid/support/v7/internal/widget/ActionBarContextView;

    .line 604
    new-instance v0, Landroid/widget/PopupWindow;

    sget v5, Lcom/yelp/android/g/b;->actionModePopupWindowStyle:I

    invoke-direct {v0, v4, v7, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->i:Landroid/widget/PopupWindow;

    .line 606
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->i:Landroid/widget/PopupWindow;

    iget-object v5, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->h:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 607
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->i:Landroid/widget/PopupWindow;

    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 609
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 610
    iget-object v5, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v5}, Landroid/support/v7/app/ActionBarActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget v6, Lcom/yelp/android/g/b;->actionBarSize:I

    invoke-virtual {v5, v6, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 611
    iget v0, v0, Landroid/util/TypedValue;->data:I

    iget-object v5, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v5}, Landroid/support/v7/app/ActionBarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 613
    iget-object v5, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->h:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v5, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 614
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->i:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 615
    new-instance v0, Landroid/support/v7/app/i;

    invoke-direct {v0, p0}, Landroid/support/v7/app/i;-><init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;)V

    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->j:Ljava/lang/Runnable;

    .line 633
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->h:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_3

    .line 634
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->h:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->c()V

    .line 635
    new-instance v5, Lcom/yelp/android/l/b;

    iget-object v6, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->h:Landroid/support/v7/internal/widget/ActionBarContextView;

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->i:Landroid/widget/PopupWindow;

    if-nez v0, :cond_6

    move v0, v1

    :goto_1
    invoke-direct {v5, v4, v6, v3, v0}, Lcom/yelp/android/l/b;-><init>(Landroid/content/Context;Landroid/support/v7/internal/widget/ActionBarContextView;Lcom/yelp/android/m/b;Z)V

    .line 637
    invoke-virtual {v5}, Lcom/yelp/android/m/a;->b()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {p1, v5, v0}, Lcom/yelp/android/m/b;->a(Lcom/yelp/android/m/a;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 638
    invoke-virtual {v5}, Lcom/yelp/android/m/a;->d()V

    .line 639
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->h:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0, v5}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Lcom/yelp/android/m/a;)V

    .line 640
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->h:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 641
    iput-object v5, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->g:Lcom/yelp/android/m/a;

    .line 642
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->i:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 643
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 645
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->h:Landroid/support/v7/internal/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 648
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->h:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 649
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->h:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ce;->t(Landroid/view/View;)V

    .line 655
    :cond_3
    :goto_2
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->g:Lcom/yelp/android/m/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    if-eqz v0, :cond_4

    .line 656
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->g:Lcom/yelp/android/m/a;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->onSupportActionModeStarted(Lcom/yelp/android/m/a;)V

    .line 658
    :cond_4
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->g:Lcom/yelp/android/m/a;

    return-object v0

    .line 623
    :cond_5
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    sget v5, Lcom/yelp/android/g/g;->action_mode_bar_stub:I

    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ViewStubCompat;

    .line 625
    if-eqz v0, :cond_1

    .line 627
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/support/v7/internal/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 628
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContextView;

    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->h:Landroid/support/v7/internal/widget/ActionBarContextView;

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 635
    goto :goto_1

    .line 652
    :cond_7
    iput-object v7, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->g:Lcom/yelp/android/m/a;

    goto :goto_2
.end method

.method b(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 167
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->q()V

    .line 168
    return-void
.end method

.method public b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 255
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->q()V

    .line 256
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 257
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->onSupportContentChanged()V

    .line 259
    return-void
.end method

.method b(Z)V
    .locals 0

    .prologue
    .line 686
    return-void
.end method

.method public b(I)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 459
    packed-switch p1, :pswitch_data_0

    .line 482
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivity;->requestWindowFeature(I)Z

    move-result v0

    :goto_0
    return v0

    .line 461
    :pswitch_1
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->t()V

    .line 462
    iput-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->b:Z

    goto :goto_0

    .line 465
    :pswitch_2
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->t()V

    .line 466
    iput-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->c:Z

    goto :goto_0

    .line 469
    :pswitch_3
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->t()V

    .line 470
    iput-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->d:Z

    goto :goto_0

    .line 473
    :pswitch_4
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->t()V

    .line 474
    iput-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->s:Z

    goto :goto_0

    .line 477
    :pswitch_5
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->t()V

    .line 478
    iput-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->t:Z

    goto :goto_0

    .line 459
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected b(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 750
    sparse-switch p1, :sswitch_data_0

    :cond_0
    move v0, v1

    .line 762
    :goto_0
    return v0

    .line 752
    :sswitch_0
    invoke-direct {p0, v1, p2}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->e(ILandroid/view/KeyEvent;)V

    goto :goto_0

    .line 755
    :sswitch_1
    invoke-direct {p0, v1, v1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a(IZ)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v2

    .line 756
    if-eqz v2, :cond_0

    iget-boolean v3, v2, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->o:Z

    if-eqz v3, :cond_0

    .line 757
    invoke-direct {p0, v2, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    goto :goto_0

    .line 750
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method b(ILandroid/view/Menu;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 528
    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    .line 529
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 530
    if-eqz v1, :cond_0

    .line 531
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->h(Z)V

    .line 535
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->superOnMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method c(I)V
    .locals 0

    .prologue
    .line 696
    return-void
.end method

.method c(Z)V
    .locals 0

    .prologue
    .line 691
    return-void
.end method

.method protected c(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 766
    const/16 v1, 0x52

    if-ne p1, v1, :cond_1

    .line 767
    invoke-direct {p0, v0, p2}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->d(ILandroid/view/KeyEvent;)Z

    .line 768
    const/4 v0, 0x1

    .line 776
    :cond_0
    :goto_0
    return v0

    .line 773
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 774
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public c(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 498
    if-eqz p1, :cond_0

    .line 499
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->n()Lcom/yelp/android/i/h;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/yelp/android/i/h;->a(ILandroid/view/Menu;)Z

    move-result v0

    .line 501
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 212
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_0

    .line 214
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->g(Z)V

    .line 216
    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 220
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_0

    .line 222
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->g(Z)V

    .line 224
    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 586
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 587
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    :goto_0
    return-void

    .line 589
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->e(I)V

    goto :goto_0
.end method

.method public h()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 664
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->g:Lcom/yelp/android/m/a;

    if-eqz v1, :cond_1

    .line 665
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->g:Lcom/yelp/android/m/a;

    invoke-virtual {v1}, Lcom/yelp/android/m/a;->c()V

    .line 675
    :cond_0
    :goto_0
    return v0

    .line 670
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 671
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->h()Z

    move-result v1

    if-nez v1, :cond_0

    .line 675
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method k()I
    .locals 1

    .prologue
    .line 700
    sget v0, Lcom/yelp/android/g/b;->homeAsUpIndicator:I

    return v0
.end method

.method public l()V
    .locals 0

    .prologue
    .line 264
    return-void
.end method

.method final q()V
    .locals 8

    .prologue
    const v7, 0x1020002

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 267
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->n:Z

    if-nez v0, :cond_b

    .line 268
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->b:Z

    if-eqz v0, :cond_4

    .line 274
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 275
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v2, Lcom/yelp/android/g/b;->actionBarTheme:I

    invoke-virtual {v0, v2, v1, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 278
    iget v0, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_3

    .line 279
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v0, v2, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 285
    :goto_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/yelp/android/g/i;->abc_screen_toolbar:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->p:Landroid/view/ViewGroup;

    .line 288
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->p:Landroid/view/ViewGroup;

    sget v1, Lcom/yelp/android/g/g;->decor_content_parent:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ag;

    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->k:Landroid/support/v7/internal/widget/ag;

    .line 290
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->k:Landroid/support/v7/internal/widget/ag;

    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->n()Lcom/yelp/android/i/h;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/ag;->setWindowCallback(Lcom/yelp/android/i/h;)V

    .line 295
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->c:Z

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->k:Landroid/support/v7/internal/widget/ag;

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/ag;->a(I)V

    .line 298
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->s:Z

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->k:Landroid/support/v7/internal/widget/ag;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/ag;->a(I)V

    .line 301
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->t:Z

    if-eqz v0, :cond_2

    .line 302
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->k:Landroid/support/v7/internal/widget/ag;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/ag;->a(I)V

    .line 348
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->p:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/v7/internal/widget/bm;->b(Landroid/view/View;)V

    .line 350
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, v7}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 351
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->p:Landroid/view/ViewGroup;

    sget v2, Lcom/yelp/android/g/g;->action_bar_activity_content:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 356
    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_7

    .line 357
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 358
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 359
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 281
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    goto :goto_0

    .line 305
    :cond_4
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->d:Z

    if-eqz v0, :cond_5

    .line 306
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/yelp/android/g/i;->abc_screen_simple_overlay_action_mode:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->p:Landroid/view/ViewGroup;

    .line 313
    :goto_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_6

    .line 316
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->p:Landroid/view/ViewGroup;

    new-instance v1, Landroid/support/v7/app/g;

    invoke-direct {v1, p0}, Landroid/support/v7/app/g;-><init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;)V

    invoke-static {v0, v1}, Landroid/support/v4/view/ce;->a(Landroid/view/View;Landroid/support/v4/view/bn;)V

    goto :goto_1

    .line 309
    :cond_5
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/yelp/android/g/i;->abc_screen_simple:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->p:Landroid/view/ViewGroup;

    goto :goto_3

    .line 337
    :cond_6
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->p:Landroid/view/ViewGroup;

    check-cast v0, Landroid/support/v7/internal/widget/aj;

    new-instance v1, Landroid/support/v7/app/h;

    invoke-direct {v1, p0}, Landroid/support/v7/app/h;-><init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;)V

    invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/aj;->setOnFitSystemWindowsListener(Landroid/support/v7/internal/widget/ak;)V

    goto :goto_1

    .line 363
    :cond_7
    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    iget-object v3, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->p:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBarActivity;->superSetContentView(Landroid/view/View;)V

    .line 367
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setId(I)V

    .line 368
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setId(I)V

    .line 372
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_8

    .line 373
    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 377
    :cond_8
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->r:Ljava/lang/CharSequence;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->k:Landroid/support/v7/internal/widget/ag;

    if-eqz v0, :cond_9

    .line 378
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->k:Landroid/support/v7/internal/widget/ag;

    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->r:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/ag;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 379
    iput-object v4, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->r:Ljava/lang/CharSequence;

    .line 382
    :cond_9
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->s()V

    .line 384
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->r()V

    .line 386
    iput-boolean v6, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->n:Z

    .line 393
    invoke-direct {p0, v5, v5}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a(IZ)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v0

    .line 394
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->p()Z

    move-result v1

    if-nez v1, :cond_b

    if-eqz v0, :cond_a

    iget-object v0, v0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/i;

    if-nez v0, :cond_b

    .line 395
    :cond_a
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->e(I)V

    .line 398
    :cond_b
    return-void
.end method

.method r()V
    .locals 0

    .prologue
    .line 400
    return-void
.end method
