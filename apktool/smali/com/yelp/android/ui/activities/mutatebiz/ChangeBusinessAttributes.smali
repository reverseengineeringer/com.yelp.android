.class public abstract Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ChangeBusinessAttributes.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
.implements Lcom/yelp/android/ui/activities/mutatebiz/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$a;,
        Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/support/YelpActivity;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Lcom/yelp/android/serializable/YelpBusiness;",
        ">;>;",
        "Lcom/yelp/android/ui/activities/mutatebiz/c$a",
        "<",
        "Lcom/yelp/android/serializable/Category;",
        ">;"
    }
.end annotation


# instance fields
.field private A:[Ljava/lang/String;

.field private final B:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/BusinessAttributes;",
            ">;"
        }
    .end annotation
.end field

.field protected a:Z

.field protected b:Lcom/yelp/android/ui/activities/mutatebiz/d;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Lcom/yelp/android/ui/activities/mutatebiz/d;

.field protected h:Lcom/yelp/android/ui/activities/mutatebiz/d;

.field protected i:Lcom/yelp/android/ui/activities/mutatebiz/d;

.field protected j:Lcom/yelp/android/ui/activities/mutatebiz/d;

.field protected k:Lcom/yelp/android/ui/activities/mutatebiz/d;

.field protected l:Lcom/yelp/android/ui/activities/mutatebiz/d;

.field protected m:Lcom/yelp/android/ui/activities/mutatebiz/d;

.field protected n:Lcom/yelp/android/serializable/YelpBusiness;

.field protected o:Lcom/yelp/android/serializable/YelpBusiness;

.field protected p:Ljava/lang/String;

.field protected q:Lcom/yelp/android/serializable/BusinessAttributes;

.field protected r:Lcom/yelp/android/appdata/webrequests/w;

.field protected s:Ljava/lang/CharSequence;

.field protected t:Lcom/yelp/android/serializable/YelpBusinessAddresses;

.field protected u:Lcom/yelp/android/ui/map/YelpMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/map/YelpMap",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation
.end field

.field protected v:Lcom/yelp/android/ui/map/MapSpannableLinearLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/map/MapSpannableLinearLayout",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation
.end field

.field protected w:Landroid/view/View;

.field protected x:Z

.field protected y:Landroid/view/View;

.field protected z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 892
    new-instance v0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$9;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$9;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->B:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-void
.end method

.method private a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 725
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 737
    :pswitch_0
    const/16 v0, 0x3e8

    :goto_0
    return v0

    .line 727
    :pswitch_1
    const/16 v0, 0x400

    goto :goto_0

    .line 729
    :pswitch_2
    const/16 v0, 0x3fe

    goto :goto_0

    .line 731
    :pswitch_3
    const/16 v0, 0x3ff

    goto :goto_0

    .line 733
    :pswitch_4
    const/16 v0, 0x401

    goto :goto_0

    .line 735
    :pswitch_5
    const/16 v0, 0x3fd

    goto :goto_0

    .line 725
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f00d4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;Landroid/view/View;)I
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private a(Landroid/content/Intent;)Landroid/location/Address;
    .locals 1

    .prologue
    .line 543
    invoke-static {p1}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->a(Landroid/content/Intent;)Landroid/location/Address;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 440
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    return-object v0
.end method

.method private b(Landroid/content/Intent;)Lcom/yelp/android/serializable/YelpBusinessAddresses;
    .locals 1

    .prologue
    .line 547
    invoke-static {p1}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->b(Landroid/content/Intent;)Lcom/yelp/android/serializable/YelpBusinessAddresses;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 284
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->o:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->C()Z

    move-result v0

    .line 285
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->z:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->u:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->g()V

    .line 287
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->u:Lcom/yelp/android/ui/map/YelpMap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->o:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/ui/map/m;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->o:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->B()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/yelp/android/ui/map/m;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/map/YelpMap;->a(Ljava/util/List;Lcom/yelp/android/ui/map/a;)V

    .line 290
    new-instance v0, Lcom/google/android/gms/maps/model/CameraPosition$a;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/CameraPosition$a;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->o:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->b()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$a;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$a;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$a;->a(F)Lcom/google/android/gms/maps/model/CameraPosition$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/CameraPosition$a;->a()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 295
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->u:Lcom/yelp/android/ui/map/YelpMap;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/map/YelpMap;->a(Lcom/google/android/gms/maps/model/CameraPosition;Lcom/google/android/gms/maps/c$a;)V

    .line 296
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->v:Lcom/yelp/android/ui/map/MapSpannableLinearLayout;

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->g:Lcom/yelp/android/ui/activities/mutatebiz/d;

    check-cast v0, Lcom/yelp/android/ui/widgets/SpannableWidget;

    invoke-interface {v0, v5}, Lcom/yelp/android/ui/widgets/SpannableWidget;->setLeft(Z)V

    .line 298
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->x:Z

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->b:Lcom/yelp/android/ui/activities/mutatebiz/d;

    check-cast v0, Lcom/yelp/android/ui/widgets/SpannableWidget;

    invoke-interface {v0, v5}, Lcom/yelp/android/ui/widgets/SpannableWidget;->setRight(Z)V

    .line 302
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->y:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->v:Lcom/yelp/android/ui/map/MapSpannableLinearLayout;

    invoke-virtual {v0, v6}, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->g:Lcom/yelp/android/ui/activities/mutatebiz/d;

    check-cast v0, Lcom/yelp/android/ui/widgets/SpannableWidget;

    invoke-interface {v0, v4}, Lcom/yelp/android/ui/widgets/SpannableWidget;->setLeft(Z)V

    .line 307
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->x:Z

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->b:Lcom/yelp/android/ui/activities/mutatebiz/d;

    check-cast v0, Lcom/yelp/android/ui/widgets/SpannableWidget;

    invoke-interface {v0, v4}, Lcom/yelp/android/ui/widgets/SpannableWidget;->setRight(Z)V

    .line 309
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->y:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private j()V
    .locals 4

    .prologue
    .line 315
    new-instance v0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$b;

    const v1, 0x7f070441

    sget-object v2, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->MULTILINE_TEXT:Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    const-string/jumbo v3, ""

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$b;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;ILcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;Ljava/lang/String;)V

    .line 317
    const v1, 0x7f070108

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$b;->a(I)V

    .line 318
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->m:Lcom/yelp/android/ui/activities/mutatebiz/d;

    invoke-interface {v1, v0}, Lcom/yelp/android/ui/activities/mutatebiz/d;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->h:Lcom/yelp/android/ui/activities/mutatebiz/d;

    new-instance v1, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$4;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$4;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;)V

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/d;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    return-void
.end method

.method private l()V
    .locals 3

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->x:Z

    if-nez v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->g:Lcom/yelp/android/ui/activities/mutatebiz/d;

    check-cast v0, Lcom/yelp/android/ui/widgets/SpannedTextView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070120

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/SpannedTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->g:Lcom/yelp/android/ui/activities/mutatebiz/d;

    new-instance v1, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$5;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$5;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;)V

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/d;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    return-void
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected abstract a(Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;
.end method

.method protected abstract a(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/Intent;
.end method

.method protected abstract a(Ljava/util/Map;Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/analytics/iris/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ")",
            "Lcom/yelp/android/analytics/iris/a;"
        }
    .end annotation
.end method

.method protected abstract a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;>;)",
            "Lcom/yelp/android/appdata/webrequests/y;"
        }
    .end annotation
.end method

.method protected a(Landroid/location/Address;Lcom/yelp/android/serializable/YelpBusinessAddresses;)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 854
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->n:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusinessAddresses;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 856
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusinessAddresses;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusinessAddresses;->c()Lcom/yelp/android/serializable/YelpDetailedAddress;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(Ljava/lang/String;Lcom/yelp/android/serializable/YelpDetailedAddress;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusinessAddresses;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 861
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpDetailedAddress;

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(Ljava/lang/String;Lcom/yelp/android/serializable/YelpDetailedAddress;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 863
    :cond_0
    const-string/jumbo v0, ""

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 864
    const v0, 0x7f0706df

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 868
    :goto_1
    return-object v0

    :cond_1
    const-string/jumbo v0, "\n"

    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/a;->a(Ljava/lang/CharSequence;Landroid/location/Address;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_1
.end method

.method protected a(Ljava/lang/String;Lcom/yelp/android/serializable/YelpDetailedAddress;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 878
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    .line 879
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 880
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpDetailedAddress;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x1

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpDetailedAddress;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    array-length v4, v3

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    .line 881
    invoke-static {v5}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 882
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 880
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 878
    :cond_1
    const-string/jumbo v0, ", "

    goto :goto_0

    .line 886
    :cond_2
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 887
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 889
    :cond_3
    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(ILjava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 557
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/mutatebiz/d;

    .line 558
    invoke-interface {v0, p2, p2}, Lcom/yelp/android/ui/activities/mutatebiz/d;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 559
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Landroid/util/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 641
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->hideLoadingDialog()V

    .line 642
    instance-of v0, p1, Lcom/yelp/android/appdata/webrequests/y;

    if-eqz v0, :cond_0

    .line 643
    check-cast p1, Lcom/yelp/android/appdata/webrequests/y;

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/y;->b()Ljava/util/Collection;

    move-result-object v0

    .line 644
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 645
    const-string/jumbo v2, "changed"

    const-string/jumbo v3, ","

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(Ljava/util/Map;Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/analytics/iris/a;

    move-result-object v0

    .line 647
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 648
    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->n:Lcom/yelp/android/serializable/YelpBusiness;

    .line 649
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->s:Ljava/lang/CharSequence;

    .line 650
    const v0, 0x7f0705c7

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->showDialog(I)V

    .line 652
    :cond_0
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Category;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 626
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->l:Lcom/yelp/android/ui/activities/mutatebiz/d;

    check-cast v0, Landroid/view/View;

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 627
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->x:Z

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->w:Landroid/view/View;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 630
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 626
    goto :goto_0

    :cond_2
    move v2, v3

    .line 628
    goto :goto_1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 71
    check-cast p1, Lcom/yelp/android/serializable/Category;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(Lcom/yelp/android/serializable/Category;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->enableLoading()V

    .line 222
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->x:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/yelp/android/appdata/webrequests/v;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->B:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/appdata/webrequests/v;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    :goto_0
    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->r:Lcom/yelp/android/appdata/webrequests/w;

    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->r:Lcom/yelp/android/appdata/webrequests/w;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/w;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 227
    return-void

    .line 222
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/u;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->B:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/appdata/webrequests/u;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    goto :goto_0
.end method

.method protected a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 532
    new-instance v1, Lcom/yelp/android/ui/activities/mutatebiz/c;

    new-instance v2, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$a;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->j()Lcom/yelp/android/database/e;

    move-result-object v0

    iget-object v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->A:[Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$a;-><init>(Lcom/yelp/android/database/e;[Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v4, v0, [Landroid/view/View;

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->l:Lcom/yelp/android/ui/activities/mutatebiz/d;

    check-cast v0, Landroid/view/View;

    aput-object v0, v4, v5

    invoke-direct {v1, v2, p0, v3, v4}, Lcom/yelp/android/ui/activities/mutatebiz/c;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/c$b;Lcom/yelp/android/ui/activities/mutatebiz/c$a;Landroid/view/View;[Landroid/view/View;)V

    .line 539
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/yelp/android/serializable/Category;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/mutatebiz/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 540
    return-void
.end method

.method protected abstract b()Z
.end method

.method protected abstract c()Lcom/yelp/android/analytics/iris/a;
.end method

.method protected abstract d()Lcom/yelp/android/analytics/iris/a;
.end method

.method protected e()V
    .locals 2

    .prologue
    .line 213
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->d:Ljava/lang/String;

    .line 214
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->e:Ljava/lang/String;

    .line 215
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->f:Ljava/lang/String;

    .line 216
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->h()Ljava/lang/String;

    move-result-object v0

    .line 217
    const v1, 0x7f0f00d4

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(ILjava/lang/CharSequence;)V

    .line 218
    return-void
.end method

.method protected f()V
    .locals 5

    .prologue
    .line 147
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->b:Lcom/yelp/android/ui/activities/mutatebiz/d;

    new-instance v1, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$1;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;)V

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/d;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->j:Lcom/yelp/android/ui/activities/mutatebiz/d;

    new-instance v1, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$b;

    const v2, 0x7f07027d

    sget-object v3, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->PHONE:Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->q:Lcom/yelp/android/serializable/BusinessAttributes;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/BusinessAttributes;->e()Lcom/yelp/android/serializable/BusinessAttribute;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/serializable/BusinessAttribute;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$b;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;ILcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/d;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->i:Lcom/yelp/android/ui/activities/mutatebiz/d;

    new-instance v1, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$2;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;)V

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/d;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->k:Lcom/yelp/android/ui/activities/mutatebiz/d;

    new-instance v1, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$b;

    const v2, 0x7f07027f

    sget-object v3, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->URI:Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->q:Lcom/yelp/android/serializable/BusinessAttributes;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/BusinessAttributes;->d()Lcom/yelp/android/serializable/BusinessAttribute;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/serializable/BusinessAttribute;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$b;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;ILcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/d;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->l:Lcom/yelp/android/ui/activities/mutatebiz/d;

    new-instance v1, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$b;

    const v2, 0x7f07027b

    sget-object v3, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->MENU_URI:Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->q:Lcom/yelp/android/serializable/BusinessAttributes;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/BusinessAttributes;->g()Lcom/yelp/android/serializable/BusinessAttribute;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/serializable/BusinessAttribute;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$b;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;ILcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/d;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->l()V

    .line 190
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->k()V

    .line 191
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->j()V

    .line 192
    return-void
.end method

.method protected g()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 235
    new-instance v0, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {v0}, Lcom/yelp/android/serializable/YelpBusiness;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->o:Lcom/yelp/android/serializable/YelpBusiness;

    .line 236
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->o:Lcom/yelp/android/serializable/YelpBusiness;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->R()D

    move-result-wide v2

    iget-object v4, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusiness;->Q()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/YelpBusiness;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 238
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->o:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->O()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/yelp/android/serializable/YelpBusiness;->a(D)V

    .line 240
    const v0, 0x7f0f0220

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->v:Lcom/yelp/android/ui/map/MapSpannableLinearLayout;

    .line 241
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->v:Lcom/yelp/android/ui/map/MapSpannableLinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->setFullBleed(Z)V

    .line 242
    const v0, 0x7f0f021f

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->y:Landroid/view/View;

    .line 243
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->v:Lcom/yelp/android/ui/map/MapSpannableLinearLayout;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->getYelpMap()Lcom/yelp/android/ui/map/YelpMap;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->u:Lcom/yelp/android/ui/map/YelpMap;

    .line 244
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->v:Lcom/yelp/android/ui/map/MapSpannableLinearLayout;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->o:Lcom/yelp/android/serializable/YelpBusiness;

    new-instance v2, Lcom/yelp/android/ui/map/b;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/map/b;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->o:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->B()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {}, Lcom/yelp/android/util/f;->a()Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->a(Lcom/yelp/android/serializable/f;Lcom/yelp/android/ui/map/e;ILandroid/os/Bundle;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->z:Z

    .line 251
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->z:Z

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->v:Lcom/yelp/android/ui/map/MapSpannableLinearLayout;

    new-instance v1, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$3;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$3;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    :cond_0
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->z:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->o:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->C()Z

    move-result v0

    if-nez v0, :cond_2

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->y:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->v:Lcom/yelp/android/ui/map/MapSpannableLinearLayout;

    invoke-virtual {v0, v6}, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->setVisibility(I)V

    .line 281
    :cond_2
    return-void
.end method

.method protected h()Ljava/lang/String;
    .locals 4

    .prologue
    .line 801
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 802
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 803
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 807
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 811
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 815
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->n:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v1, :cond_7

    .line 819
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aq()Ljava/lang/String;

    move-result-object v1

    .line 820
    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->be()Lcom/yelp/android/serializable/AlternateBusinessNames;

    move-result-object v2

    .line 822
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 823
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    :cond_4
    if-eqz v2, :cond_7

    .line 827
    invoke-virtual {v2}, Lcom/yelp/android/serializable/AlternateBusinessNames;->d()Ljava/lang/String;

    move-result-object v1

    .line 828
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 829
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    :cond_5
    invoke-virtual {v2}, Lcom/yelp/android/serializable/AlternateBusinessNames;->c()Ljava/lang/String;

    move-result-object v1

    .line 833
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 834
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    :cond_6
    invoke-virtual {v2}, Lcom/yelp/android/serializable/AlternateBusinessNames;->b()Ljava/lang/String;

    move-result-object v1

    .line 838
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 839
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    :cond_7
    const v1, 0x7f0706df

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 376
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 377
    iput-boolean v5, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a:Z

    .line 379
    packed-switch p1, :pswitch_data_0

    .line 435
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 436
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->updateOptionsMenu()V

    .line 437
    return-void

    .line 381
    :pswitch_0
    const v0, 0x7f0f00d9

    invoke-static {p3}, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 384
    :pswitch_1
    const v0, 0x7f0f00da

    invoke-static {p3}, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 387
    :pswitch_2
    const v0, 0x7f0f00d7

    invoke-static {p3}, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 390
    :pswitch_3
    const v0, 0x7f0f00d8

    invoke-static {p3}, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 393
    :pswitch_4
    const-string/jumbo v0, "extra.name"

    invoke-static {p3, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->c:Ljava/lang/String;

    .line 394
    const-string/jumbo v0, "extra.yomi_name"

    invoke-static {p3, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->d:Ljava/lang/String;

    .line 395
    const-string/jumbo v0, "extra.english_name"

    invoke-static {p3, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->e:Ljava/lang/String;

    .line 396
    const-string/jumbo v0, "extra.romaji_name"

    invoke-static {p3, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->f:Ljava/lang/String;

    .line 398
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->h()Ljava/lang/String;

    move-result-object v0

    .line 400
    const v1, 0x7f0f00d4

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 403
    :pswitch_5
    invoke-direct {p0, p3}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(Landroid/content/Intent;)Landroid/location/Address;

    move-result-object v0

    .line 404
    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 405
    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->p:Ljava/lang/String;

    .line 406
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->e()V

    .line 408
    :cond_1
    invoke-direct {p0, p3}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->b(Landroid/content/Intent;)Lcom/yelp/android/serializable/YelpBusinessAddresses;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->t:Lcom/yelp/android/serializable/YelpBusinessAddresses;

    .line 409
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->t:Lcom/yelp/android/serializable/YelpBusinessAddresses;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(Landroid/location/Address;Lcom/yelp/android/serializable/YelpBusinessAddresses;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 411
    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->g:Lcom/yelp/android/ui/activities/mutatebiz/d;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/os/Parcelable;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    iget-object v4, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->t:Lcom/yelp/android/serializable/YelpBusinessAddresses;

    aput-object v4, v3, v5

    invoke-interface {v2, v1, v3}, Lcom/yelp/android/ui/activities/mutatebiz/d;->a(Ljava/lang/CharSequence;[Landroid/os/Parcelable;)V

    .line 412
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->o:Lcom/yelp/android/serializable/YelpBusiness;

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Landroid/location/Address;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Landroid/location/Address;->getLongitude()D

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/serializable/YelpBusiness;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 415
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->i()V

    goto/16 :goto_0

    .line 418
    :pswitch_6
    const-string/jumbo v0, "extra.category"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 420
    const-string/jumbo v1, ", "

    new-instance v2, Lcom/yelp/android/serializable/Category$b;

    invoke-direct {v2}, Lcom/yelp/android/serializable/Category$b;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/yelp/android/util/StringUtils;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;Lcom/yelp/android/util/StringUtils$c;)Ljava/lang/String;

    move-result-object v1

    .line 421
    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->h:Lcom/yelp/android/ui/activities/mutatebiz/d;

    invoke-interface {v2, v1, v0}, Lcom/yelp/android/ui/activities/mutatebiz/d;->a(Ljava/lang/CharSequence;Ljava/util/ArrayList;)V

    .line 422
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 425
    :pswitch_7
    invoke-static {p3}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 427
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 428
    const v0, 0x7f070489

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 430
    :goto_1
    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->i:Lcom/yelp/android/ui/activities/mutatebiz/d;

    invoke-interface {v2, v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/d;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 431
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->i:Lcom/yelp/android/ui/activities/mutatebiz/d;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/d;->a(Landroid/net/Uri;)V

    goto/16 :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    .line 379
    :pswitch_data_0
    .packed-switch 0x3fa
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 563
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a:Z

    if-eqz v0, :cond_0

    .line 564
    const v0, 0x7f070621

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->showDialog(I)V

    .line 569
    :goto_0
    return-void

    .line 566
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->c()Lcom/yelp/android/analytics/iris/a;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 567
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    if-eqz p1, :cond_0

    .line 112
    const-string/jumbo v0, "business"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->n:Lcom/yelp/android/serializable/YelpBusiness;

    .line 113
    const-string/jumbo v0, "changed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a:Z

    .line 114
    const-string/jumbo v0, "status message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->s:Ljava/lang/CharSequence;

    .line 115
    const-string/jumbo v0, "business_addresses"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessAddresses;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->t:Lcom/yelp/android/serializable/YelpBusinessAddresses;

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->setContentView(I)V

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a:Z

    .line 119
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->A:[Ljava/lang/String;

    .line 122
    const v0, 0x7f0f00da

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/mutatebiz/d;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->m:Lcom/yelp/android/ui/activities/mutatebiz/d;

    .line 123
    const v0, 0x7f0f00d9

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/mutatebiz/d;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->l:Lcom/yelp/android/ui/activities/mutatebiz/d;

    .line 124
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->x:Z

    if-eqz v0, :cond_1

    .line 125
    const v0, 0x7f0f0172

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->w:Landroid/view/View;

    .line 127
    :cond_1
    const v0, 0x7f0f00d8

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/mutatebiz/d;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->k:Lcom/yelp/android/ui/activities/mutatebiz/d;

    .line 128
    const v0, 0x7f0f00d7

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/mutatebiz/d;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->j:Lcom/yelp/android/ui/activities/mutatebiz/d;

    .line 129
    const v0, 0x7f0f00d6

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/mutatebiz/d;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->i:Lcom/yelp/android/ui/activities/mutatebiz/d;

    .line 130
    const v0, 0x7f0f00d5

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/mutatebiz/d;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->h:Lcom/yelp/android/ui/activities/mutatebiz/d;

    .line 131
    const v0, 0x7f0f0221

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/mutatebiz/d;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->g:Lcom/yelp/android/ui/activities/mutatebiz/d;

    .line 132
    const v0, 0x7f0f00d4

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/mutatebiz/d;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->b:Lcom/yelp/android/ui/activities/mutatebiz/d;

    .line 134
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->g()V

    .line 135
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 573
    sparse-switch p1, :sswitch_data_0

    .line 621
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 575
    :sswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07010a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07036d

    new-instance v2, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$7;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$7;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0705a4

    new-instance v2, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$6;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$6;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 602
    :sswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->s:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07070e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 609
    new-instance v1, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$8;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$8;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 573
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0705c7 -> :sswitch_1
        0x7f070621 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 446
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 447
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 448
    const/4 v0, 0x1

    return v0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->hideLoadingDialog()V

    .line 635
    invoke-virtual {p2, p0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->showInfoDialog(Ljava/lang/CharSequence;)V

    .line 636
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->d()Lcom/yelp/android/analytics/iris/a;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 637
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 459
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 528
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    return v3

    .line 461
    :sswitch_0
    invoke-virtual {p0, p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/y;

    move-result-object v1

    .line 469
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->n:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/appdata/LocaleSettings;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_0
    move v0, v3

    .line 474
    :goto_1
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->c:Ljava/lang/String;

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/y;->d(Ljava/lang/CharSequence;)V

    .line 478
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 479
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/y;->e(Ljava/lang/String;)V

    .line 481
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 482
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/y;->f(Ljava/lang/String;)V

    .line 484
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 485
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/y;->g(Ljava/lang/String;)V

    .line 488
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->g:Lcom/yelp/android/ui/activities/mutatebiz/d;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/mutatebiz/d;->getParcelableArrayData()[Landroid/os/Parcelable;

    move-result-object v2

    .line 489
    if-eqz v2, :cond_5

    .line 491
    aget-object v0, v2, v4

    check-cast v0, Landroid/location/Address;

    aget-object v2, v2, v3

    if-eqz v2, :cond_9

    move v2, v3

    :goto_2
    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/appdata/webrequests/y;->a(Landroid/location/Address;Z)V

    .line 494
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->n:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->t:Lcom/yelp/android/serializable/YelpBusinessAddresses;

    if-eqz v0, :cond_6

    .line 495
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->t:Lcom/yelp/android/serializable/YelpBusinessAddresses;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessAddresses;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/y;->a(Ljava/util/Map;)V

    .line 497
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->h:Lcom/yelp/android/ui/activities/mutatebiz/d;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/mutatebiz/d;->getParcelableArrayListData()Ljava/util/ArrayList;

    move-result-object v0

    .line 498
    if-nez v0, :cond_7

    .line 499
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 501
    :cond_7
    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/y;->a(Ljava/util/Collection;)V

    .line 502
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->l:Lcom/yelp/android/ui/activities/mutatebiz/d;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/mutatebiz/d;->getCharSequenceData()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/y;->c(Ljava/lang/CharSequence;)V

    .line 503
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->k:Lcom/yelp/android/ui/activities/mutatebiz/d;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/mutatebiz/d;->getCharSequenceData()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/y;->b(Ljava/lang/CharSequence;)V

    .line 504
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->m:Lcom/yelp/android/ui/activities/mutatebiz/d;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/mutatebiz/d;->getCharSequenceData()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/y;->f(Ljava/lang/CharSequence;)V

    .line 505
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->i:Lcom/yelp/android/ui/activities/mutatebiz/d;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/mutatebiz/d;->getCharSequenceData()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/y;->e(Ljava/lang/CharSequence;)V

    .line 506
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->j:Lcom/yelp/android/ui/activities/mutatebiz/d;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/mutatebiz/d;->getCharSequenceData()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/y;->a(Ljava/lang/CharSequence;)V

    .line 507
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->r()Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocationService;->c()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/y;->a(Landroid/location/Location;)V

    .line 509
    instance-of v0, v1, Lcom/yelp/android/appdata/webrequests/ce;

    if-eqz v0, :cond_a

    move-object v0, v1

    .line 510
    check-cast v0, Lcom/yelp/android/appdata/webrequests/ce;

    invoke-static {v0}, Lcom/yelp/android/services/job/HoursPhotoUploadJob;->launchJob(Lcom/yelp/android/appdata/webrequests/ce;)V

    .line 512
    const v0, 0x7f0703d2

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->s:Ljava/lang/CharSequence;

    .line 513
    const v0, 0x7f0705c7

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->showDialog(I)V

    goto/16 :goto_0

    :cond_8
    move v0, v4

    .line 469
    goto/16 :goto_1

    :cond_9
    move v2, v4

    .line 491
    goto :goto_2

    .line 515
    :cond_a
    new-array v0, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/y;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 516
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    goto/16 :goto_0

    .line 520
    :sswitch_1
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a:Z

    if-eqz v0, :cond_b

    .line 521
    const v0, 0x7f070621

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->showDialog(I)V

    goto/16 :goto_0

    .line 523
    :cond_b
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->c()Lcom/yelp/android/analytics/iris/a;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 524
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->finish()V

    goto/16 :goto_0

    .line 459
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f0f0607 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 453
    const v0, 0x7f0f0607

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->b()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f07054e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 454
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 140
    const-string/jumbo v0, "business"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 141
    const-string/jumbo v0, "business_addresses"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->t:Lcom/yelp/android/serializable/YelpBusinessAddresses;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 142
    const-string/jumbo v0, "changed"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 143
    const-string/jumbo v0, "status message"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->s:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 144
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 71
    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Landroid/util/Pair;)V

    return-void
.end method
