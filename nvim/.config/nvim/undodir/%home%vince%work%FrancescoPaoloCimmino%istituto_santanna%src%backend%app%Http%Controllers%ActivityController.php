Vim�UnDo� 7�E��!EҦjA�"�re�\<��V��H�   a   B        $yesterday = date('Y-m-d 00:00:00', strtotime("-1 days"));   $   !                       d��    _�                     3        ����                                                                                                                                                                                                                                                                                                                                                             d=z     �               a   <?php       namespace App\Http\Controllers;       4use App\Http\Requests\Activity\StoreActivityRequest;   5use App\Http\Requests\Activity\UpdateActivityRequest;   ;use App\Http\Resources\Activity\ActivityCollectionResource;   1use App\Http\Resources\Activity\ActivityResource;   use App\Models\Activity;   use Illuminate\Http\Response;       2class ActivityController extends ApiBaseController   {       /**   )     * Display a listing of the resource.        *   (     * @return \Illuminate\Http\Response        */       public function index()       {   +        /** @var \App\Models\User $user **/           $user = auth()->user();   6        if (!$user->can('viewAny', Activity::class)) {   r            return $this->sendError('You are not authorized to view any activities', Response::HTTP_UNAUTHORIZED);   
        };   �        return $this->sendResponse((new ActivityCollectionResource(Activity::all()))->resolve(), 'Activities retrieved successfully.');       }       &    public function indexWithoutPast()       {   +        /** @var \App\Models\User $user **/           $user = auth()->user();   6        if (!$user->can('viewAny', Activity::class)) {   r            return $this->sendError('You are not authorized to view any activities', Response::HTTP_UNAUTHORIZED);   
        };   B        $yesterday = date('Y-m-d 00:00:00', strtotime("-1 days"));   �        return $this->sendResponse((new ActivityCollectionResource(Activity::where('date', '>', $yesterday)->get()))->resolve(), 'Activities retrieved successfully.');       }           /**   1     * Store a newly created resource in storage.        *   @     * @param  \App\Http\Requests\StoreActivityRequest  $request   (     * @return \Illuminate\Http\Response        */   8    public function store(StoreActivityRequest $request)       {   <        $activity = Activity::create($request->validated());   s        return $this->sendResponse((new ActivityResource($activity))->resolve(), 'Activity created successfully.');       }           /**   &     * Display the specified resource.        *   4     * @param  \App\Models\Users\Activity  $activity   (     * @return \Illuminate\Http\Response        */   ,    public function show(Activity $activity)       {   +        /** @var \App\Models\User $user **/           $user = auth()->user();   ,        if ($user->can('view', $activity)) {   w            return $this->sendResponse((new ActivityResource($activity))->resolve(), 'Activity created successfully.');   
        };   m        return $this->sendError('You are not authorized to view this activity', Response::HTTP_UNAUTHORIZED);       }           /**   0     * Update the specified resource in storage.        *   A     * @param  \App\Http\Requests\UpdateActivityRequest  $request   4     * @param  \App\Models\Users\Activity  $activity   (     * @return \Illuminate\Http\Response        */   N    public function update(UpdateActivityRequest $request, Activity $activity)       {   1        $activity->update($request->validated());   s        return $this->sendResponse((new ActivityResource($activity))->resolve(), 'Activity updated successfully.');       }           /**   2     * Remove the specified resource from storage.        *   4     * @param  \App\Models\Users\Activity  $activity   (     * @return \Illuminate\Http\Response        */   /    public function destroy(Activity $activity)       {   +        /** @var \App\Models\User $user **/           $user = auth()->user();   .        if ($user->can('delete', $activity)) {                $activity->delete();   G            return $this->sendSuccess('Activity deleted successfully');   
        };   o        return $this->sendError('You are not authorized to delete this activity', Response::HTTP_UNAUTHORIZED);       }   }5�5�_�                    $   !    ����                                                                                                                                                                                                                                                                                                                            $   !       $   "       v   "    d��     �   #   %   a      B        $yesterday = date('Y-m-d 00:00:00', strtotime("-1 days"));5��    #   !                 �                    5�_�                    $   $    ����                                                                                                                                                                                                                                                                                                                            $   $       $   %       v   %    d��     �   #   %   a      B        $yesterday = date('Y-m-d 23:00:00', strtotime("-1 days"));5��    #   $                 �                    5�_�                     $   '    ����                                                                                                                                                                                                                                                                                                                            $   '       $   (       v   (    d��    �   #   %   a      B        $yesterday = date('Y-m-d 23:59:00', strtotime("-1 days"));5��    #   '                 �                    �    #   (                 �                    �    #   '                 �                    �    #   (                 �                    5��