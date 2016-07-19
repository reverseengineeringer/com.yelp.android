.class public Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityFindFriends.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment$a;


# instance fields
.field private a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

.field private b:Z

.field private c:Z

.field private d:Landroid/widget/TextView$OnEditorActionListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 190
    new-instance v0, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends$1;-><init>(Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->d:Landroid/widget/TextView$OnEditorActionListener;

    return-void
.end method

.method public static a(Landroid/content/Context;Z)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    const-string/jumbo v1, "extra.from_signup"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 47
    return-object v0
.end method

.method private a()Landroid/support/v4/app/o;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitTransaction"
        }
    .end annotation

    .prologue
    const v2, 0x7f04000e

    const v1, 0x7f04000d

    .line 181
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/support/v4/app/o;->a(IIII)Landroid/support/v4/app/o;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;)Landroid/support/v4/app/o;
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->a()Landroid/support/v4/app/o;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 123
    const-string/jumbo v0, "SOURCE_CONTACTS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/yelp/android/appdata/PermissionGroup;->CONTACTS:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-static {p0, v0}, Lcom/yelp/android/appdata/k;->b(Landroid/content/Context;Lcom/yelp/android/appdata/PermissionGroup;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    const/16 v0, 0xfa

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/yelp/android/appdata/PermissionGroup;

    const/4 v2, 0x0

    sget-object v3, Lcom/yelp/android/appdata/PermissionGroup;->CONTACTS:Lcom/yelp/android/appdata/PermissionGroup;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/yelp/android/appdata/k;->a(Landroid/app/Activity;I[Lcom/yelp/android/appdata/PermissionGroup;)Z

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "fb_contacts_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    .line 133
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    if-nez v0, :cond_2

    .line 134
    invoke-static {}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->c()Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->a()Landroid/support/v4/app/o;

    move-result-object v0

    const v1, 0x7f0f018a

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    const-string/jumbo v3, "fb_contacts_fragment"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/o;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v0

    const-string/jumbo v1, "fb_contacts_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    goto :goto_0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 173
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 174
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 177
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitTransaction"
        }
    .end annotation

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f03003e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.from_signup"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->b:Z

    .line 57
    const v0, 0x7f0f0589

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    .line 59
    const v1, 0x7f0703b8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->setHint(I)V

    .line 60
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->d:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 61
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "suggest_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;

    .line 65
    if-nez v0, :cond_0

    .line 66
    invoke-static {}, Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;->a()Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;

    move-result-object v0

    .line 67
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v1

    const v2, 0x7f0f018a

    const-string/jumbo v3, "suggest_fragment"

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/o;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_1

    .line 77
    const-string/jumbo v1, "address_book"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_1

    .line 79
    const-string/jumbo v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "SOURCE_FACEBOOK"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->a(Ljava/lang/String;)V

    .line 86
    :cond_1
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->b:Z

    if-eqz v0, :cond_2

    .line 87
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->disableHotButtons()V

    .line 89
    :cond_2
    return-void

    .line 79
    :cond_3
    const-string/jumbo v0, "SOURCE_CONTACTS"

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 95
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->b:Z

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100013

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 98
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 103
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 108
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 105
    :pswitch_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->finish()V

    .line 106
    const/4 v0, 0x1

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f060d
        :pswitch_0
    .end packed-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .prologue
    .line 152
    const/16 v0, 0xfa

    if-ne v0, p1, :cond_1

    .line 153
    invoke-static {p2, p3}, Lcom/yelp/android/appdata/k;->a([Ljava/lang/String;[I)Ljava/util/Map;

    move-result-object v0

    .line 155
    sget-object v1, Lcom/yelp/android/appdata/PermissionGroup;->CONTACTS:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yelp/android/appdata/PermissionGroup;->CONTACTS:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->c:Z

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 115
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->c:Z

    if-eqz v0, :cond_0

    .line 116
    const-string/jumbo v0, "SOURCE_CONTACTS"

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->a(Ljava/lang/String;)V

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->c:Z

    .line 119
    :cond_0
    return-void
.end method
