.class public Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityFindFriends.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/friends/p;


# instance fields
.field private a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

.field private b:Z

.field private c:Z

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/TextView$OnEditorActionListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 159
    new-instance v0, Lcom/yelp/android/ui/activities/friends/a;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friends/a;-><init>(Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->e:Landroid/widget/TextView$OnEditorActionListener;

    return-void
.end method

.method public static a(Landroid/content/Context;ZZ)Landroid/content/Intent;
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
    const-string/jumbo v1, "signup_from_review"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 48
    return-object v0
.end method

.method private a()Landroid/support/v4/app/FragmentTransaction;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitTransaction"
        }
    .end annotation

    .prologue
    const v2, 0x7f04000c

    const v1, 0x7f04000b

    .line 153
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "fb_contacts_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    .line 119
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    if-nez v0, :cond_0

    .line 120
    invoke-static {}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->c()Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0c014b

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    const-string/jumbo v3, "fb_contacts_fragment"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string/jumbo v1, "fb_contacts_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 131
    :cond_1
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 142
    packed-switch p1, :pswitch_data_0

    .line 148
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 149
    return-void

    .line 144
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x3ff
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f030032

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.from_signup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->b:Z

    .line 56
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "signup_from_review"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->c:Z

    .line 58
    const v0, 0x7f0c014a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->d:Landroid/widget/LinearLayout;

    .line 59
    const v0, 0x7f0c016a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    .line 61
    const v1, 0x7f07037a

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->setHint(I)V

    .line 62
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->e:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 63
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "suggest_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;

    .line 66
    if-nez v0, :cond_0

    .line 67
    invoke-static {}, Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;->a()Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;

    move-result-object v0

    .line 68
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0c014b

    const-string/jumbo v3, "suggest_fragment"

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    const-string/jumbo v1, "address_book"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_1

    .line 80
    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    .line 80
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

    const v1, 0x7f100010

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

    .line 111
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 107
    :pswitch_0
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->c:Z

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/ActivitySignUpComplete;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->startActivity(Landroid/content/Intent;)V

    .line 108
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->finish()V

    .line 109
    const/4 v0, 0x1

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x7f0c0504
        :pswitch_0
    .end packed-switch
.end method
