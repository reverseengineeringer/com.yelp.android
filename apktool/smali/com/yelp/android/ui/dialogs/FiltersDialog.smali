.class public Lcom/yelp/android/ui/dialogs/FiltersDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "FiltersDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/dialogs/FiltersDialog$a;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Runnable;

.field private final b:[Lcom/yelp/android/ui/widgets/TwoTierButton;

.field private c:Lcom/yelp/android/ui/util/aj;

.field private d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

.field private e:Lcom/yelp/android/ui/dialogs/c;

.field private f:Lcom/yelp/android/ui/dialogs/c;

.field private g:Lcom/yelp/android/ui/dialogs/a;

.field private h:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/app/Activity;

.field private m:Ljava/util/Calendar;

.field private n:Lcom/yelp/android/ui/widgets/YelpHoloSpinner;

.field private o:Lcom/yelp/android/ui/widgets/YelpHoloSpinner;

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/DisplayGenericSearchFilter;",
            ">;"
        }
    .end annotation
.end field

.field private q:Z

.field private r:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

.field private s:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

.field private t:Z

.field private final u:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 94
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yelp/android/ui/widgets/TwoTierButton;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->b:[Lcom/yelp/android/ui/widgets/TwoTierButton;

    .line 946
    new-instance v0, Lcom/yelp/android/ui/dialogs/FiltersDialog$6;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog$6;-><init>(Lcom/yelp/android/ui/dialogs/FiltersDialog;)V

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a:Ljava/lang/Runnable;

    .line 955
    new-instance v0, Lcom/yelp/android/ui/dialogs/FiltersDialog$7;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog$7;-><init>(Lcom/yelp/android/ui/dialogs/FiltersDialog;)V

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->u:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$a;

    return-void
.end method

.method public static a(Lcom/yelp/android/serializable/Filter;ZLjava/util/List;Ljava/util/List;Lcom/yelp/android/serializable/SearchLocation;)Lcom/yelp/android/ui/dialogs/FiltersDialog;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/Filter;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/DisplayGenericSearchFilter;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/DisplayGenericSearchFilter;",
            ">;",
            "Lcom/yelp/android/serializable/SearchLocation;",
            ")",
            "Lcom/yelp/android/ui/dialogs/FiltersDialog;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Lcom/yelp/android/ui/dialogs/FiltersDialog;

    invoke-direct {v0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;-><init>()V

    .line 132
    invoke-static {p0, p1, p2, p3, p4}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->b(Lcom/yelp/android/serializable/Filter;ZLjava/util/List;Ljava/util/List;Lcom/yelp/android/serializable/SearchLocation;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->setArguments(Landroid/os/Bundle;)V

    .line 139
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/FiltersDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/FiltersDialog;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->p:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 353
    new-instance v0, Lcom/yelp/android/ui/util/e;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    .line 354
    new-instance v1, Landroid/widget/Space;

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/e;->b(Landroid/view/View;)V

    .line 355
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->c:Lcom/yelp/android/ui/util/aj;

    const v2, 0x7f0f0031

    const v3, 0x7f0703e5

    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 359
    return-void
.end method

.method private a(Lcom/yelp/android/serializable/DisplayGenericSearchFilter;)V
    .locals 2

    .prologue
    .line 840
    if-eqz p1, :cond_1

    .line 842
    invoke-virtual {p1}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->i()Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->s:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->i()Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;->e()Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->a(Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;)V

    .line 849
    :cond_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->h()Lcom/yelp/android/serializable/GenericSearchFilter;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;->f()Lcom/yelp/android/serializable/PlatformFilter;

    move-result-object v0

    .line 853
    if-eqz v0, :cond_1

    const-string/jumbo v1, "delivery_current_location"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/PlatformFilter;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 856
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->s:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->a(Z)V

    .line 859
    :cond_1
    return-void
.end method

.method private a(Lcom/yelp/android/serializable/PlatformFilter;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 872
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->l:Landroid/app/Activity;

    check-cast v0, Lcom/yelp/android/ui/dialogs/FiltersDialog$a;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->c()Lcom/yelp/android/serializable/Filter;

    move-result-object v5

    .line 878
    if-eqz p1, :cond_0

    .line 879
    new-instance v1, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;

    invoke-direct {v1, p1, v2}, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;-><init>(Lcom/yelp/android/serializable/PlatformFilter;Z)V

    invoke-virtual {v5, v1}, Lcom/yelp/android/serializable/Filter;->a(Lcom/yelp/android/serializable/GenericSearchFilter;)V

    .line 884
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->p:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/d;->a(Ljava/util/List;)Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    move-result-object v6

    .line 885
    if-eqz v6, :cond_2

    .line 888
    invoke-virtual {v5}, Lcom/yelp/android/serializable/Filter;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/GenericSearchFilter;

    .line 889
    invoke-virtual {v1}, Lcom/yelp/android/serializable/GenericSearchFilter;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->a()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/GenericSearchFilter;->c()Z

    move-result v1

    invoke-virtual {v6}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->d()Z

    move-result v8

    if-eq v1, v8, :cond_1

    .line 891
    new-instance v7, Lcom/yelp/android/g/a;

    invoke-direct {v7}, Lcom/yelp/android/g/a;-><init>()V

    .line 892
    const-string/jumbo v1, "alias"

    invoke-virtual {v6}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->a()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    const-string/jumbo v8, "toggle_on"

    invoke-virtual {v6}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->d()Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v7, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    const-string/jumbo v1, "requestId"

    invoke-interface {v0}, Lcom/yelp/android/ui/dialogs/FiltersDialog$a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    const-string/jumbo v1, "from_toggle"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->SearchPromotedFilterToggle:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v7}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 904
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->p:Ljava/util/ArrayList;

    sget-object v2, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->Reservation:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/search/d;->a(Ljava/util/List;Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;)Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    move-result-object v1

    .line 906
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 907
    sget-object v1, Lcom/yelp/android/analytics/GADimensions;->MOBILE_VERTICAL_SEARCH_ENTRY:Lcom/yelp/android/analytics/GADimensions;

    const-string/jumbo v2, "filters_menu"

    iput-object v2, v1, Lcom/yelp/android/analytics/GADimensions;->value:Ljava/lang/String;

    .line 908
    sget-object v1, Lcom/yelp/android/analytics/GADimensions;->MOBILE_VERTICAL_SEARCH_TYPE:Lcom/yelp/android/analytics/GADimensions;

    const-string/jumbo v2, "reservation"

    iput-object v2, v1, Lcom/yelp/android/analytics/GADimensions;->value:Ljava/lang/String;

    .line 911
    :cond_3
    if-eqz p1, :cond_4

    .line 912
    sget-object v1, Lcom/yelp/android/analytics/GADimensions;->MOBILE_VERTICAL_SEARCH_ENTRY:Lcom/yelp/android/analytics/GADimensions;

    const-string/jumbo v2, "filters_menu"

    iput-object v2, v1, Lcom/yelp/android/analytics/GADimensions;->value:Ljava/lang/String;

    .line 913
    sget-object v2, Lcom/yelp/android/analytics/GADimensions;->MOBILE_VERTICAL_SEARCH_TYPE:Lcom/yelp/android/analytics/GADimensions;

    const-string/jumbo v1, "pickup"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformFilter;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "pickup"

    :goto_1
    iput-object v1, v2, Lcom/yelp/android/analytics/GADimensions;->value:Ljava/lang/String;

    .line 920
    :cond_4
    if-nez p2, :cond_8

    move-object v2, v4

    .line 922
    :goto_2
    invoke-virtual {v5}, Lcom/yelp/android/serializable/Filter;->c()Ljava/util/List;

    move-result-object v1

    sget-object v3, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->Platform:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    invoke-static {v1, v3}, Lcom/yelp/android/ui/activities/search/d;->b(Ljava/util/List;Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;)Lcom/yelp/android/serializable/GenericSearchFilter;

    move-result-object v1

    .line 925
    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->f:Lcom/yelp/android/ui/dialogs/c;

    invoke-virtual {v3}, Lcom/yelp/android/ui/dialogs/c;->b()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v1}, Lcom/yelp/android/serializable/GenericSearchFilter;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 929
    invoke-virtual {v1}, Lcom/yelp/android/serializable/GenericSearchFilter;->c()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 930
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v3, "SEARCH_LOCATION"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/SearchLocation;

    invoke-virtual {p1, v1}, Lcom/yelp/android/serializable/PlatformFilter;->a(Lcom/yelp/android/serializable/SearchLocation;)V

    .line 942
    :cond_5
    :goto_3
    invoke-interface {v0, v5, v2}, Lcom/yelp/android/ui/dialogs/FiltersDialog$a;->a(Lcom/yelp/android/serializable/Filter;Lcom/yelp/android/serializable/SearchLocation;)V

    .line 943
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->dismiss()V

    .line 944
    return-void

    .line 873
    :catch_0
    move-exception v0

    .line 874
    new-instance v0, Ljava/lang/ClassCastException;

    const-string/jumbo v1, "Activity should implement the FiltersDialogListener interface"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move v1, v3

    .line 893
    goto/16 :goto_0

    .line 913
    :cond_7
    const-string/jumbo v1, "delivery"

    goto :goto_1

    .line 920
    :cond_8
    new-instance v1, Lcom/yelp/android/serializable/SearchLocation;

    invoke-direct {v1, p2}, Lcom/yelp/android/serializable/SearchLocation;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_2

    .line 933
    :cond_9
    check-cast v1, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;->f()Lcom/yelp/android/serializable/PlatformFilter;

    move-result-object v1

    .line 936
    if-nez v1, :cond_a

    :goto_4
    move-object v2, v4

    goto :goto_3

    :cond_a
    invoke-virtual {v1}, Lcom/yelp/android/serializable/PlatformFilter;->e()Lcom/yelp/android/serializable/SearchLocation;

    move-result-object v4

    goto :goto_4
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/FiltersDialog;Lcom/yelp/android/serializable/PlatformFilter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a(Lcom/yelp/android/serializable/PlatformFilter;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/FiltersDialog;Lcom/yelp/android/ui/widgets/TwoTierButton;Z)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a(Lcom/yelp/android/ui/widgets/TwoTierButton;Z)V

    return-void
.end method

.method private a(Lcom/yelp/android/ui/widgets/TwoTierButton;Z)V
    .locals 3

    .prologue
    .line 770
    invoke-virtual {p1, p2}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setChecked(Z)V

    .line 771
    invoke-virtual {p1}, Lcom/yelp/android/ui/widgets/TwoTierButton;->getLabel()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->l:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/yelp/android/ui/widgets/TwoTierButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f09010e

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 778
    return-void

    .line 771
    :cond_0
    const v0, 0x7f0900e7

    goto :goto_0
.end method

.method private a(Ljava/util/HashSet;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 703
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    :goto_0
    return-void

    .line 706
    :cond_0
    new-instance v3, Lcom/yelp/android/ui/util/e;

    new-array v0, v1, [Landroid/view/View;

    invoke-direct {v3, v0}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    .line 707
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->c:Lcom/yelp/android/ui/util/aj;

    const v4, 0x7f070360

    invoke-static {v3}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 710
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->l:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f03007e

    iget-object v5, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v0, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 715
    iget-object v5, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->b:[Lcom/yelp/android/ui/widgets/TwoTierButton;

    const v0, 0x7f0f0260

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/TwoTierButton;

    aput-object v0, v5, v1

    .line 716
    iget-object v5, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->b:[Lcom/yelp/android/ui/widgets/TwoTierButton;

    const v0, 0x7f0f0261

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/TwoTierButton;

    aput-object v0, v5, v2

    .line 717
    iget-object v5, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->b:[Lcom/yelp/android/ui/widgets/TwoTierButton;

    const/4 v6, 0x2

    const v0, 0x7f0f0262

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/TwoTierButton;

    aput-object v0, v5, v6

    .line 718
    iget-object v5, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->b:[Lcom/yelp/android/ui/widgets/TwoTierButton;

    const/4 v6, 0x3

    const v0, 0x7f0f0263

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/TwoTierButton;

    aput-object v0, v5, v6

    .line 721
    const/4 v0, 0x4

    new-array v5, v0, [Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    .line 722
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    .line 723
    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->a()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "RestaurantsPriceRange2."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 725
    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->a()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "RestaurantsPriceRange2."

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 731
    add-int/lit8 v7, v7, -0x1

    aput-object v0, v5, v7

    .line 732
    iget-object v7, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->h:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 737
    :cond_2
    iget-object v6, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->b:[Lcom/yelp/android/ui/widgets/TwoTierButton;

    array-length v7, v6

    move v0, v1

    move v1, v2

    :goto_2
    if-ge v0, v7, :cond_4

    aget-object v2, v6, v0

    .line 740
    invoke-virtual {v2}, Lcom/yelp/android/ui/widgets/TwoTierButton;->getValue()Landroid/widget/TextView;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 741
    invoke-virtual {v2}, Lcom/yelp/android/ui/widgets/TwoTierButton;->getLabel()Landroid/widget/TextView;

    move-result-object v8

    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 744
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/yelp/android/appdata/LocaleSettings;->a(I)Ljava/lang/String;

    move-result-object v8

    .line 746
    invoke-virtual {v2}, Lcom/yelp/android/ui/widgets/TwoTierButton;->getLabel()Landroid/widget/TextView;

    move-result-object v9

    iget-object v10, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->l:Landroid/app/Activity;

    const v11, 0x7f0900e7

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 747
    invoke-virtual {v2, v8}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setLabel(Ljava/lang/CharSequence;)V

    .line 749
    add-int/lit8 v8, v1, -0x1

    aget-object v8, v5, v8

    .line 750
    if-eqz v8, :cond_3

    .line 751
    invoke-static {v8, p1}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a(Lcom/yelp/android/serializable/DisplayGenericSearchFilter;Ljava/util/Set;)Z

    move-result v9

    invoke-direct {p0, v2, v9}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a(Lcom/yelp/android/ui/widgets/TwoTierButton;Z)V

    .line 753
    :cond_3
    new-instance v9, Lcom/yelp/android/ui/dialogs/FiltersDialog$5;

    invoke-direct {v9, p0, v8, p1, v2}, Lcom/yelp/android/ui/dialogs/FiltersDialog$5;-><init>(Lcom/yelp/android/ui/dialogs/FiltersDialog;Lcom/yelp/android/serializable/DisplayGenericSearchFilter;Ljava/util/HashSet;Lcom/yelp/android/ui/widgets/TwoTierButton;)V

    invoke-virtual {v2, v9}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 764
    add-int/lit8 v1, v1, 0x1

    .line 737
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 766
    :cond_4
    invoke-virtual {v3, v4}, Lcom/yelp/android/ui/util/e;->b(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method private a(Ljava/util/HashSet;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 315
    new-instance v0, Lcom/yelp/android/ui/util/aj;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/aj;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->c:Lcom/yelp/android/ui/util/aj;

    .line 316
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->h:Ljava/util/HashSet;

    .line 318
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a(Ljava/util/Set;Landroid/os/Bundle;)V

    .line 319
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a()V

    .line 320
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a(Ljava/util/HashSet;)V

    .line 321
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->f()V

    .line 322
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->e()V

    .line 323
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->d()V

    .line 324
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->g()V

    .line 328
    sget-object v0, Lcom/yelp/android/ui/dialogs/a;->a:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 329
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->e:Lcom/yelp/android/ui/dialogs/c;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/dialogs/c;->a(Ljava/util/HashSet;)V

    .line 330
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->f:Lcom/yelp/android/ui/dialogs/c;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->f:Lcom/yelp/android/ui/dialogs/c;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/dialogs/c;->a(Ljava/util/HashSet;)V

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->e:Lcom/yelp/android/ui/dialogs/c;

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->m:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/c;->a(Ljava/util/Calendar;)V

    .line 337
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->c:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 339
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    .line 340
    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->h()Lcom/yelp/android/serializable/GenericSearchFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/GenericSearchFilter;->e()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "OnlineMessageThisBusiness"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->SearchFilterRequestAQuoteShown:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    goto :goto_0

    .line 346
    :cond_2
    return-void
.end method

.method private a(Ljava/util/Set;Landroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 661
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 664
    if-eqz p2, :cond_3

    const-string/jumbo v0, "RESERVATION_FILTER_SET"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v3

    .line 668
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    .line 669
    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->c()Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    move-result-object v5

    .line 670
    sget-object v6, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->Reservation:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    if-eq v5, v6, :cond_1

    sget-object v6, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->Platform:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    if-ne v5, v6, :cond_2

    .line 671
    :cond_1
    iget-object v6, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->h:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->h()Lcom/yelp/android/serializable/GenericSearchFilter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/yelp/android/serializable/GenericSearchFilter;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 673
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 678
    :cond_2
    sget-object v6, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->Reservation:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    if-ne v5, v6, :cond_0

    if-nez v1, :cond_0

    .line 679
    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->h()Lcom/yelp/android/serializable/GenericSearchFilter;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ReservationGenericSearchFilter;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReservationGenericSearchFilter;->f()Lcom/yelp/android/serializable/ReservationFilter;

    move-result-object v0

    .line 683
    if-eqz v0, :cond_0

    .line 684
    iget-object v5, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->r:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

    invoke-virtual {v5, v0}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->a(Lcom/yelp/android/serializable/ReservationFilter;)V

    .line 685
    iput-boolean v3, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->q:Z

    goto :goto_1

    .line 664
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 690
    :cond_4
    new-instance v0, Lcom/yelp/android/ui/dialogs/a;

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v4, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->r:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

    iget-object v5, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->s:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/dialogs/a;-><init>(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Set;Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;)V

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->g:Lcom/yelp/android/ui/dialogs/a;

    .line 697
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->c:Lcom/yelp/android/ui/util/aj;

    const v1, 0x7f0f0022

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->g:Lcom/yelp/android/ui/dialogs/a;

    invoke-static {v2}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 700
    return-void
.end method

.method public static a(Lcom/yelp/android/serializable/DisplayGenericSearchFilter;Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/DisplayGenericSearchFilter;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->h()Lcom/yelp/android/serializable/GenericSearchFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/GenericSearchFilter;->c()Z

    move-result v0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private static b(Lcom/yelp/android/serializable/Filter;ZLjava/util/List;Ljava/util/List;Lcom/yelp/android/serializable/SearchLocation;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/Filter;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/DisplayGenericSearchFilter;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/DisplayGenericSearchFilter;",
            ">;",
            "Lcom/yelp/android/serializable/SearchLocation;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 158
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 162
    if-nez p0, :cond_0

    .line 163
    new-instance p0, Lcom/yelp/android/serializable/Filter;

    invoke-direct {p0}, Lcom/yelp/android/serializable/Filter;-><init>()V

    .line 166
    :cond_0
    const-string/jumbo v0, "DISTANCE"

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Filter;->d()Lcom/yelp/android/serializable/Distance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Distance;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string/jumbo v0, "SORT"

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Filter;->b()Lcom/yelp/android/serializable/Sort;

    move-result-object v2

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yelp/android/serializable/Sort;->getLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string/jumbo v0, "SEARCHING"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 171
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 172
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    .line 173
    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->d()Z

    move-result v4

    if-nez v4, :cond_1

    .line 174
    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 178
    :cond_2
    const-string/jumbo v3, "CHANGED_IDS"

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 181
    const-string/jumbo v0, "FILTER"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 184
    const-string/jumbo v0, "SEARCH_LOCATION"

    invoke-virtual {v1, v0, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 185
    return-object v1
.end method

.method static synthetic b(Lcom/yelp/android/ui/dialogs/FiltersDialog;)Lcom/yelp/android/ui/dialogs/a;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->g:Lcom/yelp/android/ui/dialogs/a;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/dialogs/FiltersDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->i:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->c:Lcom/yelp/android/ui/util/aj;

    const v1, 0x7f0f002d

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/aj;->a(I)Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    .line 363
    if-eqz v0, :cond_0

    .line 364
    iget-object v0, v0, Lcom/yelp/android/ui/util/aj$b;->a:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/yelp/android/ui/util/g;

    invoke-interface {v0}, Lcom/yelp/android/ui/util/g;->clear()V

    .line 366
    :cond_0
    return-void
.end method

.method private c()Lcom/yelp/android/serializable/Filter;
    .locals 7

    .prologue
    .line 392
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->e:Lcom/yelp/android/ui/dialogs/c;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/c;->b()Ljava/util/HashSet;

    move-result-object v3

    .line 394
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->f:Lcom/yelp/android/ui/dialogs/c;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->f:Lcom/yelp/android/ui/dialogs/c;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/c;->b()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->g:Lcom/yelp/android/ui/dialogs/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/a;->a()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 399
    sget-object v0, Lcom/yelp/android/serializable/Sort;->Default:Lcom/yelp/android/serializable/Sort;

    .line 400
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->j:Ljava/lang/String;

    sget-object v2, Lcom/yelp/android/serializable/Sort;->Distance:Lcom/yelp/android/serializable/Sort;

    iget-object v4, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->l:Landroid/app/Activity;

    invoke-virtual {v2, v4}, Lcom/yelp/android/serializable/Sort;->getLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 401
    sget-object v0, Lcom/yelp/android/serializable/Sort;->Distance:Lcom/yelp/android/serializable/Sort;

    move-object v1, v0

    .line 407
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 408
    new-instance v0, Lcom/yelp/android/serializable/Distance;

    const-string/jumbo v2, ""

    const-wide/16 v4, 0x0

    invoke-direct {v0, v2, v4, v5}, Lcom/yelp/android/serializable/Distance;-><init>(Ljava/lang/String;D)V

    .line 414
    :goto_1
    new-instance v4, Lcom/yelp/android/serializable/Filter;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v4, v0, v1, v2}, Lcom/yelp/android/serializable/Filter;-><init>(Lcom/yelp/android/serializable/Distance;Lcom/yelp/android/serializable/Sort;Ljava/util/List;)V

    .line 418
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    .line 419
    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->h()Lcom/yelp/android/serializable/GenericSearchFilter;

    move-result-object v1

    .line 423
    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->c()Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    move-result-object v2

    sget-object v6, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->OpenNow:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    if-ne v2, v6, :cond_5

    invoke-static {v0, v3}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a(Lcom/yelp/android/serializable/DisplayGenericSearchFilter;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 425
    const/4 v1, 0x0

    .line 426
    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->e:Lcom/yelp/android/ui/dialogs/c;

    invoke-virtual {v2}, Lcom/yelp/android/ui/dialogs/c;->c()Ljava/util/Calendar;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 427
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->e:Lcom/yelp/android/ui/dialogs/c;

    invoke-virtual {v1}, Lcom/yelp/android/ui/dialogs/c;->c()Ljava/util/Calendar;

    move-result-object v1

    move-object v2, v1

    .line 431
    :goto_3
    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->h()Lcom/yelp/android/serializable/GenericSearchFilter;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;

    invoke-static {v0, v3}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a(Lcom/yelp/android/serializable/DisplayGenericSearchFilter;Ljava/util/Set;)Z

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;->a(Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;Ljava/util/Calendar;Z)Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/yelp/android/serializable/Filter;->a(Lcom/yelp/android/serializable/GenericSearchFilter;)V

    goto :goto_2

    .line 402
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->j:Ljava/lang/String;

    sget-object v2, Lcom/yelp/android/serializable/Sort;->Rating:Lcom/yelp/android/serializable/Sort;

    iget-object v4, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->l:Landroid/app/Activity;

    invoke-virtual {v2, v4}, Lcom/yelp/android/serializable/Sort;->getLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 403
    sget-object v0, Lcom/yelp/android/serializable/Sort;->Rating:Lcom/yelp/android/serializable/Sort;

    move-object v1, v0

    goto :goto_0

    .line 410
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->k:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v4, v0

    invoke-static {v4, v5}, Lcom/yelp/android/util/i;->d(D)D

    move-result-wide v4

    .line 411
    new-instance v0, Lcom/yelp/android/serializable/Distance;

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->i:Ljava/lang/String;

    invoke-direct {v0, v2, v4, v5}, Lcom/yelp/android/serializable/Distance;-><init>(Ljava/lang/String;D)V

    goto/16 :goto_1

    .line 428
    :cond_4
    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->f:Lcom/yelp/android/ui/dialogs/c;

    invoke-virtual {v2}, Lcom/yelp/android/ui/dialogs/c;->c()Ljava/util/Calendar;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 429
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->e:Lcom/yelp/android/ui/dialogs/c;

    invoke-virtual {v1}, Lcom/yelp/android/ui/dialogs/c;->c()Ljava/util/Calendar;

    move-result-object v1

    move-object v2, v1

    goto :goto_3

    .line 436
    :cond_5
    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->c()Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    move-result-object v2

    sget-object v6, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->Reservation:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    if-ne v2, v6, :cond_6

    invoke-static {v0, v3}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a(Lcom/yelp/android/serializable/DisplayGenericSearchFilter;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 438
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->r:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->f()Lcom/yelp/android/serializable/ReservationFilter;

    move-result-object v2

    .line 439
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->r:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->c()V

    .line 440
    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->h()Lcom/yelp/android/serializable/GenericSearchFilter;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/ReservationGenericSearchFilter;

    .line 442
    invoke-static {v0, v3}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a(Lcom/yelp/android/serializable/DisplayGenericSearchFilter;Ljava/util/Set;)Z

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/yelp/android/serializable/ReservationGenericSearchFilter;->a(Lcom/yelp/android/serializable/ReservationGenericSearchFilter;Lcom/yelp/android/serializable/ReservationFilter;Z)Lcom/yelp/android/serializable/ReservationGenericSearchFilter;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/yelp/android/serializable/Filter;->a(Lcom/yelp/android/serializable/GenericSearchFilter;)V

    goto/16 :goto_2

    .line 447
    :cond_6
    invoke-virtual {v1}, Lcom/yelp/android/serializable/GenericSearchFilter;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 448
    invoke-virtual {v1}, Lcom/yelp/android/serializable/GenericSearchFilter;->c()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    :goto_4
    invoke-static {v1, v0}, Lcom/yelp/android/serializable/GenericSearchFilter;->a(Lcom/yelp/android/serializable/GenericSearchFilter;Z)Lcom/yelp/android/serializable/GenericSearchFilter;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/yelp/android/serializable/Filter;->a(Lcom/yelp/android/serializable/GenericSearchFilter;)V

    goto/16 :goto_2

    :cond_7
    const/4 v0, 0x0

    goto :goto_4

    .line 451
    :cond_8
    invoke-virtual {v1}, Lcom/yelp/android/serializable/GenericSearchFilter;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    invoke-virtual {v4, v1}, Lcom/yelp/android/serializable/Filter;->a(Lcom/yelp/android/serializable/GenericSearchFilter;)V

    goto/16 :goto_2

    .line 456
    :cond_9
    return-object v4

    :cond_a
    move-object v2, v1

    goto/16 :goto_3

    :cond_b
    move-object v1, v0

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/yelp/android/ui/dialogs/FiltersDialog;)Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->s:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/dialogs/FiltersDialog;)Lcom/yelp/android/ui/util/ScrollToLoadListView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    return-object v0
.end method

.method private d()V
    .locals 8

    .prologue
    const v7, 0x7f070362

    const/4 v1, 0x0

    .line 460
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    sget-object v0, Lcom/yelp/android/serializable/Sort;->Default:Lcom/yelp/android/serializable/Sort;

    iget-object v3, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->l:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Lcom/yelp/android/serializable/Sort;->getLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v0, 0x1

    sget-object v3, Lcom/yelp/android/serializable/Sort;->Rating:Lcom/yelp/android/serializable/Sort;

    iget-object v4, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->l:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/yelp/android/serializable/Sort;->getLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    sget-object v3, Lcom/yelp/android/serializable/Sort;->Distance:Lcom/yelp/android/serializable/Sort;

    iget-object v4, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->l:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/yelp/android/serializable/Sort;->getLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 465
    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->l:Landroid/app/Activity;

    const v4, 0x7f0300c0

    const v5, 0x7f0f02fa

    invoke-direct {v3, v0, v4, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 472
    new-instance v4, Lcom/yelp/android/ui/util/e;

    new-array v0, v1, [Landroid/view/View;

    invoke-direct {v4, v0}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    .line 474
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->l:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v5, 0x7f0300bf

    iget-object v6, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v0, v5, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 479
    const v0, 0x7f0f02f9

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/YelpHoloSpinner;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->o:Lcom/yelp/android/ui/widgets/YelpHoloSpinner;

    .line 480
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->o:Lcom/yelp/android/ui/widgets/YelpHoloSpinner;

    new-instance v6, Lcom/yelp/android/ui/dialogs/FiltersDialog$3;

    invoke-direct {v6, p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog$3;-><init>(Lcom/yelp/android/ui/dialogs/FiltersDialog;)V

    invoke-virtual {v0, v6}, Lcom/yelp/android/ui/widgets/YelpHoloSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 496
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->o:Lcom/yelp/android/ui/widgets/YelpHoloSpinner;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/widgets/YelpHoloSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    move v0, v1

    .line 498
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 499
    aget-object v3, v2, v0

    iget-object v6, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->j:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 505
    :goto_1
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->o:Lcom/yelp/android/ui/widgets/YelpHoloSpinner;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/widgets/YelpHoloSpinner;->setSelection(I)V

    .line 507
    invoke-virtual {v4, v5}, Lcom/yelp/android/ui/util/e;->b(Landroid/view/View;)V

    .line 509
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->c:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {p0, v7}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 512
    return-void

    .line 498
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private e()V
    .locals 10

    .prologue
    const v9, 0x7f07035f

    const v7, 0x7f07035e

    const/4 v2, 0x0

    .line 515
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->k:Ljava/util/HashMap;

    .line 519
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->l:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/LocaleSettings;->a(Landroid/content/Context;)Z

    move-result v3

    .line 520
    if-eqz v3, :cond_1

    const v1, 0x7f0d000e

    .line 524
    :goto_0
    if-eqz v3, :cond_2

    const v0, 0x7f0d000a

    .line 529
    :goto_1
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/appdata/AppData;->r()Lcom/yelp/android/appdata/LocationService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/appdata/LocationService;->c()Landroid/location/Location;

    move-result-object v4

    invoke-static {v4}, Lcom/yelp/android/util/BigCity;->isBigCity(Landroid/location/Location;)Z

    move-result v4

    .line 531
    if-eqz v4, :cond_0

    .line 532
    if-eqz v3, :cond_3

    const v1, 0x7f0d000d

    .line 536
    :goto_2
    if-eqz v3, :cond_4

    const v0, 0x7f0d0009

    .line 542
    :cond_0
    :goto_3
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 543
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 544
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    array-length v5, v3

    move v0, v2

    :goto_4
    if-ge v0, v5, :cond_5

    aget-object v6, v3, v0

    .line 546
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 520
    :cond_1
    const v1, 0x7f0d000c

    goto :goto_0

    .line 524
    :cond_2
    const v0, 0x7f0d0008

    goto :goto_1

    .line 532
    :cond_3
    const v1, 0x7f0d000b

    goto :goto_2

    .line 536
    :cond_4
    const v0, 0x7f0d0007

    goto :goto_3

    .line 549
    :cond_5
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    .line 554
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->k:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    move v1, v2

    .line 555
    :goto_5
    array-length v6, v3

    if-ge v0, v6, :cond_7

    .line 556
    aget-object v6, v3, v0

    iget-object v7, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->i:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 557
    add-int/lit8 v1, v0, 0x1

    .line 559
    :cond_6
    iget-object v6, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->k:Ljava/util/HashMap;

    aget-object v7, v3, v0

    aget v8, v5, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 562
    :cond_7
    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->l:Landroid/app/Activity;

    const v5, 0x7f0300c0

    const v6, 0x7f0f02fa

    invoke-direct {v3, v0, v5, v6, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 569
    new-instance v4, Lcom/yelp/android/ui/util/e;

    new-array v0, v2, [Landroid/view/View;

    invoke-direct {v4, v0}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    .line 571
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->l:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v5, 0x7f0300bf

    iget-object v6, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v0, v5, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 576
    const v0, 0x7f0f02f9

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/YelpHoloSpinner;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->n:Lcom/yelp/android/ui/widgets/YelpHoloSpinner;

    .line 577
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->n:Lcom/yelp/android/ui/widgets/YelpHoloSpinner;

    new-instance v5, Lcom/yelp/android/ui/dialogs/FiltersDialog$4;

    invoke-direct {v5, p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog$4;-><init>(Lcom/yelp/android/ui/dialogs/FiltersDialog;)V

    invoke-virtual {v0, v5}, Lcom/yelp/android/ui/widgets/YelpHoloSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 592
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->n:Lcom/yelp/android/ui/widgets/YelpHoloSpinner;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/widgets/YelpHoloSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 593
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->n:Lcom/yelp/android/ui/widgets/YelpHoloSpinner;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/YelpHoloSpinner;->setSelection(I)V

    .line 595
    invoke-virtual {v4, v2}, Lcom/yelp/android/ui/util/e;->b(Landroid/view/View;)V

    .line 597
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->c:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {p0, v9}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 601
    return-void
.end method

.method static synthetic e(Lcom/yelp/android/ui/dialogs/FiltersDialog;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->b()V

    return-void
.end method

.method private f()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 604
    new-instance v2, Lcom/yelp/android/ui/dialogs/c;

    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->l:Landroid/app/Activity;

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/yelp/android/ui/dialogs/c;-><init>(Landroid/support/v4/app/l;)V

    iput-object v2, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->e:Lcom/yelp/android/ui/dialogs/c;

    .line 608
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->p:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move v2, v1

    .line 615
    :goto_0
    const/4 v0, 0x4

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    .line 617
    iget-object v3, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->h:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 618
    iget-object v3, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->e:Lcom/yelp/android/ui/dialogs/c;

    invoke-virtual {v3, v0}, Lcom/yelp/android/ui/dialogs/c;->d(Ljava/lang/Object;)V

    .line 619
    iget-object v3, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->h:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 620
    add-int/lit8 v0, v1, 0x1

    .line 623
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    .line 624
    goto :goto_0

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->c:Lcom/yelp/android/ui/util/aj;

    const v1, 0x7f0703e5

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->e:Lcom/yelp/android/ui/dialogs/c;

    invoke-static {v2}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 633
    iget-boolean v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->t:Z

    if-eqz v0, :cond_1

    .line 634
    new-instance v0, Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;-><init>(Landroid/content/Context;)V

    .line 635
    sget-object v1, Lcom/yelp/android/ui/panels/CommonLoadingSpinner;->SMALL:Lcom/yelp/android/ui/panels/CommonLoadingSpinner;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setSpinner(Lcom/yelp/android/ui/panels/c;)V

    .line 636
    new-instance v1, Lcom/yelp/android/ui/util/x;

    invoke-direct {v1}, Lcom/yelp/android/ui/util/x;-><init>()V

    .line 637
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/e;->b(Landroid/view/View;)V

    .line 638
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->c:Lcom/yelp/android/ui/util/aj;

    const v2, 0x7f0f002d

    invoke-static {v1}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 641
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private g()V
    .locals 5

    .prologue
    const v4, 0x7f070306

    .line 646
    new-instance v1, Lcom/yelp/android/ui/dialogs/c;

    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->l:Landroid/app/Activity;

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/yelp/android/ui/dialogs/c;-><init>(Landroid/support/v4/app/l;)V

    iput-object v1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->f:Lcom/yelp/android/ui/dialogs/c;

    .line 648
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    .line 649
    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->h:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->h()Lcom/yelp/android/serializable/GenericSearchFilter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/GenericSearchFilter;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 650
    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->f:Lcom/yelp/android/ui/dialogs/c;

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/dialogs/c;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 653
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->c:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->f:Lcom/yelp/android/ui/dialogs/c;

    invoke-static {v1, v2}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 658
    return-void
.end method

.method private h()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 781
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v3, "RESERVATION_VIEW_CONTROLLER"

    invoke-virtual {v0, v3}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->r:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

    .line 784
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->r:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

    if-nez v0, :cond_0

    .line 785
    invoke-static {}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->a()Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->r:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

    .line 786
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    iget-object v3, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->r:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

    const-string/jumbo v4, "RESERVATION_VIEW_CONTROLLER"

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 792
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v3, "DELIVERY_PICKUP_VIEW_CONTROLLER"

    invoke-virtual {v0, v3}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->s:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    .line 795
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->s:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    if-nez v0, :cond_1

    .line 799
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->p:Ljava/util/ArrayList;

    sget-object v3, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->Platform:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    invoke-static {v0, v3}, Lcom/yelp/android/ui/activities/search/d;->a(Ljava/util/List;Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;)Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    move-result-object v4

    .line 801
    if-eqz v4, :cond_4

    .line 802
    invoke-virtual {v4}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->h()Lcom/yelp/android/serializable/GenericSearchFilter;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;->f()Lcom/yelp/android/serializable/PlatformFilter;

    move-result-object v3

    .line 806
    invoke-virtual {v4}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->i()Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 807
    invoke-virtual {v4}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->i()Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;->e()Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    move-result-object v0

    move-object v2, v0

    move-object v0, v3

    .line 813
    :goto_0
    if-eqz v0, :cond_2

    const-string/jumbo v3, "pickup"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/PlatformFilter;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 816
    const/4 v0, 0x1

    .line 821
    :goto_1
    const-string/jumbo v3, "filter"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v2, v1, v0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->a(Ljava/lang/String;Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;ZLjava/lang/Integer;)Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->s:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    .line 828
    invoke-direct {p0, v4}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a(Lcom/yelp/android/serializable/DisplayGenericSearchFilter;)V

    .line 830
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->s:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    const-string/jumbo v2, "DELIVERY_PICKUP_VIEW_CONTROLLER"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 835
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->s:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->u:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->a(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$a;)V

    .line 836
    return-void

    :cond_2
    move v0, v1

    .line 818
    goto :goto_1

    :cond_3
    move-object v0, v3

    goto :goto_0

    :cond_4
    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/DisplayGenericSearchFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 369
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->t:Z

    .line 370
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    if-eqz p1, :cond_0

    .line 372
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->p:Ljava/util/ArrayList;

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->p:Ljava/util/ArrayList;

    sget-object v1, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->Platform:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/search/d;->a(Ljava/util/List;Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;)Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    move-result-object v0

    .line 377
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a(Lcom/yelp/android/serializable/DisplayGenericSearchFilter;)V

    .line 382
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->e:Lcom/yelp/android/ui/dialogs/c;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/c;->b()Ljava/util/HashSet;

    move-result-object v0

    .line 383
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->g:Lcom/yelp/android/ui/dialogs/a;

    invoke-virtual {v1}, Lcom/yelp/android/ui/dialogs/a;->a()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 384
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a(Ljava/util/HashSet;Landroid/os/Bundle;)V

    .line 385
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 386
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->b()V

    .line 388
    :cond_1
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 304
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 305
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->s:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->s:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->s:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->r:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->r:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->r:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 312
    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 190
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->l:Landroid/app/Activity;

    .line 193
    if-eqz p1, :cond_1

    move-object v1, p1

    .line 194
    :goto_0
    const-string/jumbo v0, "TIME"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->m:Ljava/util/Calendar;

    .line 195
    const-string/jumbo v0, "DISTANCE"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->i:Ljava/lang/String;

    .line 196
    const-string/jumbo v0, "SORT"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->j:Ljava/lang/String;

    .line 197
    const-string/jumbo v0, "SEARCHING"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->t:Z

    .line 198
    const-string/jumbo v0, "FILTER"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->p:Ljava/util/ArrayList;

    .line 200
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->h()V

    .line 206
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->l:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0300aa

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 207
    const v0, 0x7f0f012b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/ScrollToLoadListView;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    .line 213
    iget-boolean v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->t:Z

    if-eqz v0, :cond_0

    .line 214
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 215
    iget-object v3, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->e()V

    .line 216
    iget-object v3, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 222
    :cond_0
    const-string/jumbo v0, "CHANGED_IDS"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/util/d;->a([Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 225
    invoke-direct {p0, v0, p1}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a(Ljava/util/HashSet;Landroid/os/Bundle;)V

    .line 227
    new-instance v0, Lcom/yelp/android/ui/dialogs/d;

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->l:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/dialogs/d;-><init>(Landroid/content/Context;)V

    .line 228
    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/dialogs/d;->a(Landroid/view/View;)Lcom/yelp/android/ui/dialogs/d;

    .line 229
    const v1, 0x7f0702cc

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/d;->a(I)Lcom/yelp/android/ui/dialogs/d;

    .line 230
    const v1, 0x7f070520

    invoke-virtual {v0, v1, v6}, Lcom/yelp/android/ui/dialogs/d;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/yelp/android/ui/dialogs/d;

    .line 231
    const v1, 0x7f0706cd

    new-instance v2, Lcom/yelp/android/ui/dialogs/FiltersDialog$1;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog$1;-><init>(Lcom/yelp/android/ui/dialogs/FiltersDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/d;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/yelp/android/ui/dialogs/d;

    .line 241
    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/d;->a()Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 193
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->o:Lcom/yelp/android/ui/widgets/YelpHoloSpinner;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/YelpHoloSpinner;->onDetachedFromWindow()V

    .line 278
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->n:Lcom/yelp/android/ui/widgets/YelpHoloSpinner;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/YelpHoloSpinner;->onDetachedFromWindow()V

    .line 279
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onPause()V

    .line 280
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 284
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 285
    const-string/jumbo v0, "TIME"

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->e:Lcom/yelp/android/ui/dialogs/c;

    invoke-virtual {v1}, Lcom/yelp/android/ui/dialogs/c;->c()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 286
    const-string/jumbo v0, "DISTANCE"

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string/jumbo v0, "SORT"

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string/jumbo v0, "SEARCHING"

    iget-boolean v1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->t:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 289
    const-string/jumbo v0, "FILTER"

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->p:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 290
    const-string/jumbo v0, "RESERVATION_FILTER_SET"

    iget-boolean v1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->q:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 294
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->e:Lcom/yelp/android/ui/dialogs/c;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/c;->b()Ljava/util/HashSet;

    move-result-object v0

    .line 295
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->g:Lcom/yelp/android/ui/dialogs/a;

    if-eqz v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->g:Lcom/yelp/android/ui/dialogs/a;

    invoke-virtual {v1}, Lcom/yelp/android/ui/dialogs/a;->a()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 298
    :cond_0
    const-string/jumbo v1, "CHANGED_IDS"

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 246
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 249
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/d;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/d;->a(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/dialogs/FiltersDialog$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog$2;-><init>(Lcom/yelp/android/ui/dialogs/FiltersDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/ar;->a(Landroid/app/Dialog;)V

    .line 269
    return-void
.end method
