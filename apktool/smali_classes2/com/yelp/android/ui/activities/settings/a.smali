.class public Lcom/yelp/android/ui/activities/settings/a;
.super Ljava/lang/Object;
.source "PreferenceScreenViewBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/settings/a$4;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/PreferenceSection;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/ui/activities/settings/PreferenceView;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/PreferenceSection;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/content/Context;

.field private g:Landroid/view/View$OnClickListener;

.field private h:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/PreferenceSection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    new-instance v0, Lcom/yelp/android/ui/activities/settings/a$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/settings/a$1;-><init>(Lcom/yelp/android/ui/activities/settings/a;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/a;->g:Landroid/view/View$OnClickListener;

    .line 286
    new-instance v0, Lcom/yelp/android/ui/activities/settings/a$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/settings/a$2;-><init>(Lcom/yelp/android/ui/activities/settings/a;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/a;->h:Landroid/view/View$OnClickListener;

    .line 47
    iput-object p2, p0, Lcom/yelp/android/ui/activities/settings/a;->d:Ljava/util/List;

    .line 48
    iput-object p1, p0, Lcom/yelp/android/ui/activities/settings/a;->f:Landroid/content/Context;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/a;->e:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/a;->a:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/a;->c:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/a;->b:Ljava/util/Map;

    .line 53
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/view/View;
    .locals 5

    .prologue
    .line 105
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/a;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    sget v1, Lcom/yelp/android/appdata/n;->e:I

    const/4 v2, 0x0

    sget v3, Lcom/yelp/android/appdata/n;->e:I

    sget v4, Lcom/yelp/android/appdata/n;->e:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 110
    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/a;->f:Landroid/content/Context;

    const v2, 0x7f090154

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 115
    :goto_0
    return-object v0

    .line 112
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Lcom/yelp/android/serializable/Preference;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/Preference;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/ui/activities/settings/PreferenceView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    sget-object v0, Lcom/yelp/android/ui/activities/settings/a$4;->a:[I

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Preference;->f()Lcom/yelp/android/serializable/Preference$ControlType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Preference$ControlType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Invalid preference type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/settings/a;->b(Lcom/yelp/android/serializable/Preference;)Ljava/util/List;

    move-result-object v0

    .line 149
    :goto_0
    return-object v0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/settings/a;->c(Lcom/yelp/android/serializable/Preference;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Preference;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/ui/activities/settings/PreferenceView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 135
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Preference;

    .line 136
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/settings/a;->a(Lcom/yelp/android/serializable/Preference;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 137
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Preference;->e()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/settings/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 140
    :cond_0
    return-object v1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/settings/a;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/a;->c:Ljava/util/Map;

    return-object v0
.end method

.method private a(Lcom/yelp/android/serializable/PreferenceSection;)V
    .locals 3

    .prologue
    .line 126
    invoke-virtual {p1}, Lcom/yelp/android/serializable/PreferenceSection;->b()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/settings/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 127
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/settings/a;->b(Lcom/yelp/android/serializable/PreferenceSection;)V

    .line 129
    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/a;->e:Ljava/util/List;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PreferenceSection;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yelp/android/ui/activities/settings/a;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/a;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 131
    return-void
.end method

.method private a(Lcom/yelp/android/serializable/PreferenceSection;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/PreferenceSection;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Preference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 248
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Preference;

    .line 249
    iget-object v2, p0, Lcom/yelp/android/ui/activities/settings/a;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Preference;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v2, p0, Lcom/yelp/android/ui/activities/settings/a;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Preference;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Preference;->e()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/activities/settings/a;->a(Lcom/yelp/android/serializable/PreferenceSection;Ljava/util/List;)V

    goto :goto_0

    .line 253
    :cond_0
    return-void
.end method

.method private a(Lcom/yelp/android/ui/activities/settings/PreferenceView;Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/activities/settings/PreferenceView;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 304
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 305
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 306
    if-eqz p3, :cond_0

    .line 307
    sget v2, Lcom/yelp/android/ui/util/av;->c:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/av;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    goto :goto_0

    .line 309
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 312
    :cond_1
    if-eqz p3, :cond_2

    .line 313
    sget v2, Lcom/yelp/android/ui/util/av;->c:I

    int-to-long v2, v2

    new-instance v4, Lcom/yelp/android/ui/activities/settings/a$3;

    invoke-direct {v4, p0, p1}, Lcom/yelp/android/ui/activities/settings/a$3;-><init>(Lcom/yelp/android/ui/activities/settings/a;Lcom/yelp/android/ui/activities/settings/PreferenceView;)V

    invoke-static {v0, v2, v3, v4}, Lcom/yelp/android/ui/util/av;->a(Landroid/view/View;JLandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/AlphaAnimation;

    goto :goto_0

    .line 326
    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 330
    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/settings/a;Lcom/yelp/android/serializable/PreferenceSection;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/settings/a;->b(Lcom/yelp/android/serializable/PreferenceSection;)V

    return-void
.end method

.method private b()Landroid/view/View;
    .locals 4

    .prologue
    .line 119
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/a;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 120
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/16 v3, 0x19

    invoke-static {v3}, Lcom/yelp/android/appdata/n;->a(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    return-object v0
.end method

.method private b(Lcom/yelp/android/serializable/Preference;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/Preference;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/ui/activities/settings/PreferenceView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Lcom/yelp/android/ui/activities/settings/PreferenceToggleView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/a;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/activities/settings/PreferenceToggleView;-><init>(Landroid/content/Context;)V

    .line 157
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Preference;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/settings/PreferenceToggleView;->setTitle(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Preference;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/settings/PreferenceToggleView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Preference;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/settings/PreferenceToggleView;->setKey(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/a;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/settings/PreferenceToggleView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/activities/settings/PreferenceToggleView;->setViewBuilder(Lcom/yelp/android/ui/activities/settings/a;)V

    .line 163
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 164
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/a;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Preference;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    return-object v1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/settings/a;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/a;->b:Ljava/util/Map;

    return-object v0
.end method

.method private b(Lcom/yelp/android/serializable/PreferenceSection;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 192
    .line 197
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 198
    invoke-virtual {p1}, Lcom/yelp/android/serializable/PreferenceSection;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Preference;

    .line 199
    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/a;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Preference;->c()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v5, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 200
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Preference;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Preference;

    .line 201
    iget-object v6, p0, Lcom/yelp/android/ui/activities/settings/a;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Preference;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 206
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/settings/PreferenceView;

    .line 207
    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->setLeft(Z)V

    .line 208
    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->setRight(Z)V

    .line 209
    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->setMiddle(Z)V

    .line 210
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->refreshDrawableState()V

    goto :goto_1

    :cond_2
    move v4, v3

    move v1, v3

    .line 215
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 216
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/settings/PreferenceView;

    .line 217
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    .line 218
    if-nez v1, :cond_6

    .line 219
    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->setLeft(Z)V

    .line 220
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->refreshDrawableState()V

    move v0, v2

    :goto_3
    move v1, v0

    move v0, v3

    .line 215
    :goto_4
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto :goto_2

    .line 224
    :cond_3
    if-lez v4, :cond_5

    .line 229
    :cond_4
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/settings/PreferenceView;

    .line 230
    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->setRight(Z)V

    .line 231
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->refreshDrawableState()V

    .line 232
    return-void

    :cond_5
    move v0, v4

    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method private c(Lcom/yelp/android/serializable/Preference;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/Preference;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/ui/activities/settings/PreferenceView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 172
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Preference;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PreferenceOption;

    .line 173
    new-instance v3, Lcom/yelp/android/ui/activities/settings/PreferenceRadioView;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/settings/a;->f:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/PreferenceOption;->a()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/yelp/android/ui/activities/settings/PreferenceRadioView;-><init>(Landroid/content/Context;I)V

    .line 175
    invoke-virtual {v0}, Lcom/yelp/android/serializable/PreferenceOption;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceRadioView;->setTitle(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Preference;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceRadioView;->setKey(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/a;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceRadioView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    invoke-virtual {v3, p0}, Lcom/yelp/android/ui/activities/settings/PreferenceRadioView;->setViewBuilder(Lcom/yelp/android/ui/activities/settings/a;)V

    .line 179
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/a;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Preference;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    return-object v1
.end method

.method private c()V
    .locals 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PreferenceSection;

    .line 240
    invoke-virtual {v0}, Lcom/yelp/android/serializable/PreferenceSection;->b()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/yelp/android/ui/activities/settings/a;->a(Lcom/yelp/android/serializable/PreferenceSection;Ljava/util/List;)V

    goto :goto_0

    .line 242
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/settings/a;->c()V

    .line 57
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/a;->e:Ljava/util/List;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/settings/a;->b()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PreferenceSection;

    .line 59
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/settings/a;->a(Lcom/yelp/android/serializable/PreferenceSection;)V

    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/a;->e:Ljava/util/List;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/settings/a;->b()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/a;->e:Ljava/util/List;

    return-object v0
.end method

.method public a(Lcom/yelp/android/ui/activities/settings/PreferenceView;Z)V
    .locals 4

    .prologue
    .line 68
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/a;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Preference;

    .line 72
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Preference;->f()Lcom/yelp/android/serializable/Preference$ControlType;

    move-result-object v0

    sget-object v2, Lcom/yelp/android/serializable/Preference$ControlType;->TOGGLE_RECEIVE_ANY:Lcom/yelp/android/serializable/Preference$ControlType;

    if-ne v0, v2, :cond_3

    .line 73
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 75
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 76
    check-cast v1, Landroid/widget/TextView;

    .line 78
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    :cond_1
    instance-of v1, v0, Lcom/yelp/android/ui/activities/settings/PreferenceView;

    if-eqz v1, :cond_0

    .line 83
    if-eq v0, p1, :cond_0

    .line 84
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    :cond_2
    invoke-direct {p0, p1, v2, p2}, Lcom/yelp/android/ui/activities/settings/a;->a(Lcom/yelp/android/ui/activities/settings/PreferenceView;Ljava/util/List;Z)V

    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PreferenceSection;

    .line 90
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/settings/a;->b(Lcom/yelp/android/serializable/PreferenceSection;)V

    goto :goto_1

    .line 96
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/a;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Preference;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Preference;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Preference;

    .line 98
    iget-object v3, p0, Lcom/yelp/android/ui/activities/settings/a;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Preference;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 100
    :cond_4
    invoke-direct {p0, p1, v2, p2}, Lcom/yelp/android/ui/activities/settings/a;->a(Lcom/yelp/android/ui/activities/settings/PreferenceView;Ljava/util/List;Z)V

    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/a;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PreferenceSection;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/settings/a;->b(Lcom/yelp/android/serializable/PreferenceSection;)V

    .line 102
    :cond_5
    return-void
.end method
