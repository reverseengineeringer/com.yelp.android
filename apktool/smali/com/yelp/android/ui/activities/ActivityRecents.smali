.class public Lcom/yelp/android/ui/activities/ActivityRecents;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "ActivityRecents.java"


# static fields
.field private static final a:[Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;


# instance fields
.field private b:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/yelp/android/ui/activities/dr;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    const/4 v1, 0x0

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->ALTERNATE_NAMES:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->RATING:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->ADDRESS:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->CATEGORY:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->DISTANCE:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->BOOKMARK:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->PRICE:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityRecents;->a:[Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    .line 250
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityRecents;Landroid/widget/AdapterView;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/ActivityRecents;->a(Landroid/widget/AdapterView;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityRecents;)Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->b:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityRecents;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->c:Ljava/util/ArrayList;

    return-object p1
.end method

.method private a(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 4

    .prologue
    .line 150
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 151
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v2

    .line 152
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 153
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->b:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->notifyDataSetChanged()V

    .line 159
    :cond_2
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/q;->f()Lcom/yelp/android/database/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/database/d;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 161
    return-void
.end method

.method private final f()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 221
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 222
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, 0x3

    invoke-direct {v1, v4, v3, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 225
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setGravity(I)V

    .line 226
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 228
    sget v3, Lcom/yelp/android/appdata/ao;->e:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 229
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    const v2, 0x7f07014f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 231
    new-instance v2, Lcom/yelp/android/ui/activities/dq;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/dq;-><init>(Lcom/yelp/android/ui/activities/ActivityRecents;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 240
    return-object v0
.end method


# virtual methods
.method protected a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 133
    if-eqz v0, :cond_0

    .line 134
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->e:Z

    .line 135
    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    .line 136
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/ActivityRecents;->startActivityForResult(Landroid/content/Intent;I)V

    .line 138
    :cond_0
    return-void
.end method

.method public c()Lcom/yelp/android/ui/activities/dr;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->d:Lcom/yelp/android/ui/activities/dr;

    return-object v0
.end method

.method public e()Lcom/yelp/android/ui/activities/dr;
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/dr;

    .line 124
    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/yelp/android/ui/activities/dr;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/dr;-><init>()V

    .line 127
    :cond_0
    return-object v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->Recents:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRecents;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRecents;->e()Lcom/yelp/android/ui/activities/dr;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/YelpListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 143
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_0

    const-string/jumbo v0, "extra.business"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const-string/jumbo v0, "extra.business"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRecents;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 147
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 62
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v0, 0x7f0704bc

    invoke-super {p0, v0}, Lcom/yelp/android/ui/util/YelpListActivity;->setTitle(I)V

    .line 64
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->e:Z

    .line 65
    new-instance v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->b:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->b:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    sget-object v1, Lcom/yelp/android/ui/activities/ActivityRecents;->a:[Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a([Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;)V

    .line 67
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRecents;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    .line 68
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityRecents;->f()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 69
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->b:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 71
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRecents;->registerForContextMenu(Landroid/view/View;)V

    .line 72
    if-eqz p1, :cond_0

    .line 73
    const-string/jumbo v0, "businesses"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->c:Ljava/util/ArrayList;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 77
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRecents;->e()Lcom/yelp/android/ui/activities/dr;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->d:Lcom/yelp/android/ui/activities/dr;

    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->d:Lcom/yelp/android/ui/activities/dr;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/dr;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 79
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->d:Lcom/yelp/android/ui/activities/dr;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/yelp/android/ui/activities/ActivityRecents;

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/dr;->b([Ljava/lang/Object;)Lcom/yelp/android/util/aa;

    .line 81
    :cond_1
    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/ActivityRecents;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 86
    :goto_0
    return-void

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->b:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(Ljava/util/List;)V

    .line 84
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRecents;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRecents;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    const v2, 0x7f07023e

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityRecents;->a(Landroid/widget/AdapterView;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    .prologue
    .line 208
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 209
    instance-of v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_0

    .line 210
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 211
    check-cast p2, Landroid/widget/AdapterView;

    .line 212
    invoke-virtual {p2}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 213
    invoke-static {p0, p1, v0}, Lcom/yelp/android/ui/util/bf;->a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 214
    const v1, 0x7f020078

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderIcon(I)Landroid/view/ContextMenu;

    .line 215
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 217
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 178
    packed-switch p1, :pswitch_data_0

    .line 203
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 180
    :pswitch_0
    const v0, 0x7f070077

    invoke-static {p0, p1, v0}, Lcom/yelp/android/ui/util/cp;->a(Landroid/content/Context;II)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0706b8

    new-instance v2, Lcom/yelp/android/ui/activities/dp;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/dp;-><init>(Lcom/yelp/android/ui/activities/ActivityRecents;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0703e9

    new-instance v2, Lcom/yelp/android/ui/activities/do;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/do;-><init>(Lcom/yelp/android/ui/activities/ActivityRecents;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x7f070078
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onPause()V

    .line 113
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRecents;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->t()Lcom/yelp/android/appdata/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/k;->b()V

    .line 114
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onResume()V

    .line 92
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 93
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRecents;->e()Lcom/yelp/android/ui/activities/dr;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->d:Lcom/yelp/android/ui/activities/dr;

    .line 94
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->d:Lcom/yelp/android/ui/activities/dr;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/dr;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->d:Lcom/yelp/android/ui/activities/dr;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/yelp/android/ui/activities/ActivityRecents;

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/dr;->b([Ljava/lang/Object;)Lcom/yelp/android/util/aa;

    .line 97
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRecents;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 104
    :goto_0
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->e:Z

    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRecents;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setSelection(I)V

    .line 106
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->e:Z

    .line 108
    :cond_1
    return-void

    .line 99
    :cond_2
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/q;->f()Lcom/yelp/android/database/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/d;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->c:Ljava/util/ArrayList;

    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->b:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public synthetic onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRecents;->c()Lcom/yelp/android/ui/activities/dr;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 171
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 172
    const-string/jumbo v0, "businesses"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRecents;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 174
    :cond_0
    return-void
.end method
