.class public Lcom/yelp/android/ui/activities/feed/viewbinder/q;
.super Ljava/lang/Object;
.source "InlineAlertsViewBinder.java"


# static fields
.field private static final a:I


# instance fields
.field private final b:Lcom/yelp/android/ui/activities/notifications/a$a;

.field private final c:Lcom/yelp/android/ui/activities/notifications/b;

.field private final d:Lcom/yelp/android/ui/activities/notifications/b;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/view/View;

.field private final g:Landroid/view/View;

.field private final h:Landroid/graphics/drawable/Drawable;

.field private final i:Lcom/yelp/android/cm/d;

.field private final j:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    sget v0, Lcom/yelp/android/appdata/n;->c:I

    sput v0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/yelp/android/ui/activities/notifications/a$a;Lcom/yelp/android/ui/activities/support/YelpFragment;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->j:Landroid/view/View;

    .line 49
    iput-object p2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->b:Lcom/yelp/android/ui/activities/notifications/a$a;

    .line 50
    const v0, 0x7f0f02ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->f:Landroid/view/View;

    .line 51
    const v0, 0x7f0f02ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->g:Landroid/view/View;

    .line 52
    new-instance v0, Lcom/yelp/android/ui/activities/notifications/b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->f:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/activities/notifications/b;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->c:Lcom/yelp/android/ui/activities/notifications/b;

    .line 53
    new-instance v0, Lcom/yelp/android/ui/activities/notifications/b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->g:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/activities/notifications/b;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->d:Lcom/yelp/android/ui/activities/notifications/b;

    .line 54
    const v0, 0x7f0f02ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->e:Landroid/widget/TextView;

    .line 55
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/yelp/android/ui/activities/feed/viewbinder/q$1;

    invoke-direct {v1, p0, p3}, Lcom/yelp/android/ui/activities/feed/viewbinder/q$1;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/q;Lcom/yelp/android/ui/activities/support/YelpFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->h:Landroid/graphics/drawable/Drawable;

    .line 65
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->h:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 68
    new-instance v0, Lcom/yelp/android/cm/d;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0200a7

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/cm/d;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->i:Lcom/yelp/android/cm/d;

    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->i:Lcom/yelp/android/cm/d;

    sget v1, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->a:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/cm/d;->a(F)V

    .line 70
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->i:Lcom/yelp/android/cm/d;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->i:Lcom/yelp/android/cm/d;

    invoke-virtual {v1}, Lcom/yelp/android/cm/d;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->i:Lcom/yelp/android/cm/d;

    invoke-virtual {v2}, Lcom/yelp/android/cm/d;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/yelp/android/cm/d;->setBounds(IIII)V

    .line 75
    return-void
.end method

.method private static final a(Lcom/yelp/android/serializable/Alert;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 164
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/q$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/viewbinder/q$4;-><init>(Lcom/yelp/android/serializable/Alert;)V

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/viewbinder/q;)Lcom/yelp/android/ui/activities/notifications/a$a;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->b:Lcom/yelp/android/ui/activities/notifications/a$a;

    return-object v0
.end method

.method private a(Lcom/yelp/android/ui/activities/notifications/b;Lcom/yelp/android/serializable/Alert;I)V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p1, Lcom/yelp/android/ui/activities/notifications/b;->b:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p1, Lcom/yelp/android/ui/activities/notifications/b;->b:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/feed/viewbinder/q$2;

    invoke-direct {v1, p0, p2, p3}, Lcom/yelp/android/ui/activities/feed/viewbinder/q$2;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/q;Lcom/yelp/android/serializable/Alert;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    :cond_0
    iget-object v0, p1, Lcom/yelp/android/ui/activities/notifications/b;->a:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 151
    iget-object v0, p1, Lcom/yelp/android/ui/activities/notifications/b;->b:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 153
    :goto_0
    iget-object v1, p1, Lcom/yelp/android/ui/activities/notifications/b;->a:Landroid/widget/Button;

    new-instance v2, Lcom/yelp/android/ui/activities/feed/viewbinder/q$3;

    invoke-direct {v2, p0, p2, v0, p3}, Lcom/yelp/android/ui/activities/feed/viewbinder/q$3;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/q;Lcom/yelp/android/serializable/Alert;II)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    :cond_1
    return-void

    .line 151
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v1, 0x8

    .line 123
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 127
    return-void
.end method

.method public a(Ljava/util/ArrayList;ILandroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Alert;",
            ">;I",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 80
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->a()V

    .line 82
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, p2, :cond_0

    .line 83
    const-string/jumbo v0, "InlineAlertsViewBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The size of the alerts list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is less than notification count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 108
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->i:Lcom/yelp/android/cm/d;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/yelp/android/cm/d;->a(ILandroid/content/res/Resources;)V

    .line 109
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v3

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->i:Lcom/yelp/android/cm/d;

    invoke-virtual {v0, v1, v5, v2, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 117
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->j:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 120
    :cond_1
    return-void

    .line 92
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->g:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->d:Lcom/yelp/android/ui/activities/notifications/b;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Alert;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/notifications/b;->a(Lcom/yelp/android/serializable/Alert;)V

    .line 94
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->d:Lcom/yelp/android/ui/activities/notifications/b;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Alert;

    invoke-direct {p0, v1, v0, v4}, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->a(Lcom/yelp/android/ui/activities/notifications/b;Lcom/yelp/android/serializable/Alert;I)V

    .line 95
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->g:Landroid/view/View;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Alert;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->a(Lcom/yelp/android/serializable/Alert;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    :pswitch_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->f:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->c:Lcom/yelp/android/ui/activities/notifications/b;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Alert;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/notifications/b;->a(Lcom/yelp/android/serializable/Alert;)V

    .line 100
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->c:Lcom/yelp/android/ui/activities/notifications/b;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Alert;

    invoke-direct {p0, v1, v0, v3}, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->a(Lcom/yelp/android/ui/activities/notifications/b;Lcom/yelp/android/serializable/Alert;I)V

    .line 101
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->f:Landroid/view/View;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Alert;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->a(Lcom/yelp/android/serializable/Alert;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    :pswitch_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v3

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v5, v2, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()I
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
