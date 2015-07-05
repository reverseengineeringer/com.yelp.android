.class Lcom/yelp/android/ag/l;
.super Ljava/lang/Object;
.source "ViewTarget.java"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/ag/h;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/yelp/android/ag/m;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ag/l;->b:Ljava/util/List;

    .line 119
    iput-object p1, p0, Lcom/yelp/android/ag/l;->a:Landroid/view/View;

    .line 120
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/yelp/android/ag/l;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    const/4 v0, 0x1

    .line 135
    iget-object v1, p0, Lcom/yelp/android/ag/l;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 136
    invoke-direct {p0}, Lcom/yelp/android/ag/l;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 137
    iget-object v1, p0, Lcom/yelp/android/ag/l;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/yelp/android/ag/l;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/yelp/android/ag/l;->a(II)V

    .line 144
    :goto_1
    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/yelp/android/ag/l;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    iget-object v1, p0, Lcom/yelp/android/ag/l;->c:Lcom/yelp/android/ag/m;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 155
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ag/l;->c:Lcom/yelp/android/ag/m;

    goto :goto_0

    .line 138
    :cond_3
    invoke-direct {p0}, Lcom/yelp/android/ag/l;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 139
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, v2, v1}, Lcom/yelp/android/ag/l;->a(II)V

    goto :goto_1

    .line 141
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(II)V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/yelp/android/ag/l;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ag/h;

    .line 124
    invoke-interface {v0, p1, p2}, Lcom/yelp/android/ag/h;->a(II)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ag/l;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 127
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ag/l;)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/yelp/android/ag/l;->a()V

    return-void
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/yelp/android/ag/l;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ag/l;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Z
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 195
    iget-object v0, p0, Lcom/yelp/android/ag/l;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_1

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v1, v2, :cond_0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Z
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/yelp/android/ag/l;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v1, :cond_0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/yelp/android/ag/h;)V
    .locals 5

    .prologue
    .line 160
    iget-object v0, p0, Lcom/yelp/android/ag/l;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 161
    invoke-direct {p0}, Lcom/yelp/android/ag/l;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    iget-object v0, p0, Lcom/yelp/android/ag/l;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ag/l;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/yelp/android/ag/h;->a(II)V

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/ag/l;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 164
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-interface {p1, v1, v0}, Lcom/yelp/android/ag/h;->a(II)V

    goto :goto_0

    .line 165
    :cond_2
    invoke-direct {p0}, Lcom/yelp/android/ag/l;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 166
    iget-object v0, p0, Lcom/yelp/android/ag/l;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 168
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 170
    const-string/jumbo v2, "ViewTarget"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 171
    const-string/jumbo v2, "ViewTarget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Trying to load image into ImageView using WRAP_CONTENT, defaulting to screen dimensions: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]. Give the view an actual width and height "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " for better performance."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_3
    invoke-interface {p1, v1, v0}, Lcom/yelp/android/ag/h;->a(II)V

    goto :goto_0

    .line 179
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ag/l;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 180
    iget-object v0, p0, Lcom/yelp/android/ag/l;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ag/l;->c:Lcom/yelp/android/ag/m;

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/yelp/android/ag/l;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 184
    new-instance v1, Lcom/yelp/android/ag/m;

    invoke-direct {v1, p0}, Lcom/yelp/android/ag/m;-><init>(Lcom/yelp/android/ag/l;)V

    iput-object v1, p0, Lcom/yelp/android/ag/l;->c:Lcom/yelp/android/ag/m;

    .line 185
    iget-object v1, p0, Lcom/yelp/android/ag/l;->c:Lcom/yelp/android/ag/m;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto/16 :goto_0
.end method
